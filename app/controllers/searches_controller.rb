class SearchesController < ApplicationController
    def new
        
        if params[:q].present?
        @services = Service.where('description like?', "%#{params[:q]}%" ) || Service.where('name like?', "%#{params[:q]}%" ) || Service.where('category like?', "%#{params[:q]}%" )
        else
        @services = Service.all
        end
        render "services/index"
    end
end
