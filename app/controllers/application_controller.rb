class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include Pundit

  def check_profile?
    if user_signed_in? && current_user.profile.first_name.blank?
      redirect_to edit_profile_path(current_user.id), alert: "Please create your profile."
    end
  end

  def maps_image_tag(profile)
    image_tag "http://maps.googleapis.com/maps/api/staticmap?center=#{profile.latitude},#{profile.longitude}&zoom=14&size=400x400&sensor=false"
    end
end
