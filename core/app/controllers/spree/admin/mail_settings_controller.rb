module Spree
  module Admin
    class MailSettingsController < BaseController

      def update
        Spree::Config.set(params[:preferences])
        Spree::Preferences::MailSettings.init

        respond_to do |format|
          format.html {
            redirect_to admin_mail_settings_path
          }
        end
      end
    end
  end
end