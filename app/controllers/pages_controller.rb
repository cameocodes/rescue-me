class PagesController < ApplicationController
  before_action :check_profile?
  def index
    @pets = Pet.order(created_at: :desc).limit(10)
  end

  def surrender
  end

  def faq
  end

  def contact
  end

  def rescuedirectory
    @rescues = Profile.where rescue: "1"
  end

  def dashboard
    @user = current_user
    @profile = Profile.find(@user.id)

    if @profile.rescue == "1"
      @rescue = @profile
    end

    if Pet.find_by(user_id: current_user.id)
      @pets = Pet.where(user_id: current_user.id)
    end

  end

  def apply 
    @pet = Pet.find(params[:id])
    @rescue = @pet.user_id
  end


  private
  
end
