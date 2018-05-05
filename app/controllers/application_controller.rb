class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # include Pundit

  def check_profile?
    if user_signed_in? #&& current_user.profile.nil?
      redirect_to new_profile_path
    end
  end




  def after_sign_up_path_for(resource)
      new_profile_path
  end

  def after_sign_in_path_for(resource)
    if current_user.profile.nil?
      new_profile_path
    else
      root_path
    end
  end
end
