class ServicesController < InheritedResources::Base

  private

    def service_params
      params.require(:service).permit(:name, :category, :description, :home, :photos)
    end

end
