class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include Pundit

  def check_profile?
    if user_signed_in? && current_user.profile.first_name.blank?
      redirect_to edit_profile_path(current_user.id), alert: "Please create your profile."
    end
  end
end
