class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  authorize_resource
  # load_and_authorize_resource

  # GET /services
  # GET /services.json
  def index
    @services = Service.all
  end

  # GET /services/1
  # GET /services/1.json
  def show
    @users = User.all
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(service_params)
    @service.user = current_user
    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # def delete_image
  #   @photo = ActiveStorage::Attachment.find(params[:id])
  #   @photo.purge
  #   redirect_to service_path(@service)
  #   end
    def delete_image
      @service = Service.find(params[:service_id])
      if @service.user == current_user
      begin
        @photo = ActiveStorage::Attachment.find(params[:photo_id])
        @photo.purge
        redirect_to service_path(@service), notice: 'Imagen eliminada con éxito'
      rescue ActiveRecord::RecordNotFound
        redirect_to service_path(@service), alert: 'Error al eliminar la imagen'
      end
    else
      redirect_to service_path(@service), alert: 'Error al eliminar la imagen'
    end
    end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:name, :category, :description, :home, photos: [])
    end
end

