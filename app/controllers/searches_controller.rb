class SearchesController < ApplicationController
    def new
        if params[:q].present?
        @services = Service.where('description like ? or name like ?', "%#{params[:q]}%", "%#{params[:q]}%" )
        else
        @services = Service.all
        end
        render "services/index"
    end
end
