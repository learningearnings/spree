module Spree
  module Admin
    class InventorySettingsController < Spree::Admin::BaseController

      def update
        Spree::Config.set(params[:preferences])

        respond_to do |format|
          format.html {
            redirect_to edit_admin_inventory_settings_path
          }
        end
      end
    end
  end

end
