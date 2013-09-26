module Ckeditor
  #this should be taken out of monologue
  PicturesController.class_eval do
    before_filter :authenticate_user!

    def authenticate_user!
      if monologue_current_user.nil?
        redirect_to monologue.admin_login_path, alert: I18n.t("monologue.admin.login.need_auth")
      end
    end

    private
      def monologue_current_user
        @monologue_current_user ||= Monologue::User.find(session[:monologue_user_id]) if session[:monologue_user_id]
      end
  end
end