ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    

    # Here is an example of a simple dashboard with columns and panels.
    

    columns do
      column do
        panel "Últimos servicios agregados" do
          ul do
            Service.last(5).map do |service|
              li link_to(service.name, admin_service_path(service))
            end
          end
        end
      end
      column do
        panel "Usuarios" do
          ul do
            li "Usuarios registrados: #{User.count}"
            li "Administradores registrados: #{AdminUser.count}"
          end
        end
      end
      column do
        panel "Servicios" do
          ul do
            li "Servicios creados: #{Service.count}"
          end
        end
      end
    end
  end
end

   
