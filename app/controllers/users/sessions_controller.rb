# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]
  #before_action :validate_active_user, only: [:create]
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
   def create
    if validate_active_user
     super
    else
     flash[:alert] = "Esta cuenta aún no ha sido confirmada"
     redirect_to new_user_session_path
    end

     if !@user
       super
     end
   end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_in_params
     devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
   end

   def validate_active_user
    @user = User.find_by_email(params[:user][:email])
    if @user && @user.approbated?
      return true
    elsif @user && !@user.approbated?
      return false
    end
   end

end
