require "rails_admin_reset_cache/engine"

module RailsAdminResetCache
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class ResetCache < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :root? do
          true
        end

        register_instance_option :object_level do
          false
        end

        register_instance_option :controller do
          Proc.new do
            Rails.cache.clear
            flash[:notice]="Cache reset succesfull!"
            redirect_to "/admin"
          end
        end


        register_instance_option :link_icon do
          'icon-magic'
        end


      end
    end
  end
end
