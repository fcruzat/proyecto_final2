ActiveAdmin.register User do
    # See permitted parameters documentation:
    # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
    #
    # permit_params :list, :of, :attributes, :on, :model
    permit_params :email, :password, :approbated
    #
    # or
    #
    # permit_params do
    #   permitted = [:permitted, :attributes]
    #   permitted << :other if params[:action] == 'create' && current_user.admin?
    #   permitted
    # end
    index do
        column :id
        column :email
        column :created_at
        column :member_since do |user|
            time_ago_in_words(user.created_at)
        end
        column :approbated
        actions
    end
    form do |f|
        inputs 'Agregar una nueva usuaria' do
            input :email
            input :password
            input :approbated
        end
        actions
    end
    controller do
        def update
            if (params[:user][:password].blank? && params[:user][:password_confirmation].blank?)
                params[:user].delete("password")
                params[:user].delete("password_confirmation")
            end
            super
        end
        
    end
    filter :email, as: :select
    filter :created_at
end