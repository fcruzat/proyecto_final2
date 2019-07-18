ActiveAdmin.register Service do
    # See permitted parameters documentation:
    # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
    #
    permit_params :name, :category, :description, :home, :photos
    #
    # or
    #
    # permit_params do
    #   permitted = [:permitted, :attributes]
    #   permitted << :other if params[:action] == 'create' && current_user.admin?
    #   permitted
    # end
    index do
        column :name
        column :category
        column :description
        column :home
        column :created_at
        column :updated_at
        column :user_id
        actions
    end
    
    form do |f|
        inputs 'Agregar un nuevo servicio' do
            
            f.input :name
            f.input :category
            f.input :description
            f.input :home
            f.file_field :photos, multiple: true   
        end
        actions
    end
    
    
    filter :name
    filter :category, as: :select
    filter :description
    filter :home
end
