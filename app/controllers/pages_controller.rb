class PagesController < ApplicationController
  before_action :check_profile?

  # GET INDEX PAGE
  def index
    @pets = Pet.order(created_at: :desc).limit(10)
  end

  # GET SURRENDER PAGE
  def surrender
  end

  # GET SURRENDER PAGE
  def faq
  end

    # POST CONTACT EMAIL
  def contact_email
    message = contact_params[:message]
    name = contact_params[:name]
    email = contact_params[:email]
    user_info = {email: email, message: message, name: name}
    ContactMailer.send_contact_email(user_info).deliver_now
    format.html { redirect_to :contact, notice: 'Your contact form was successfully submitted.' }
  end

    # GET RESCUE DIRECTORY
  def rescuedirectory
    @rescues = Profile.where rescue: "1"
  end

    # GET USER DASHBOARD
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

  # GET PET APPLICATION PAGE
  def apply 
    @pet = Pet.find(params[:id])
    @rescue = Profile.find_by(user_id: @pet.user_id)
    @user = Profile.find_by(user_id: current_user.id)
  end

  # POST PET APPLICATION
  def send_application
    first_name = apply_params[:first_name]
    last_name = apply_params[:last_name]
    email = apply_params[:email]
    suburb = apply_params[:suburb]
    state = apply_params[:state]
    postcode = apply_params[:postcode]
    house_members = apply_params[:house_members]
    other_animals = apply_params[:other_animals]
    hours_alone = apply_params[:hours_alone]
    comments = apply_params[:comments]
    pet = Pet.find_by(id: apply_params[:pet_id])
    rescue_email = apply_params[:rescue_email]
    user_application = {first_name: first_name,
      last_name: last_name, 
      email: email, 
      suburb: suburb,
      state: state,
      postcode: postcode,
      house_members: house_members,
      other_animals: other_animals,
      hours_alone: hours_alone,
      comments: comments,
      pet: pet,
      rescue_email: rescue_email}
    ApplyMailer.send_application(user_application).deliver_now
    redirect_back(fallback_location: pet_path(params[:id]))
  end



  # DONATION 
  # GET DONATE
  def donate
  end

  # GET NEW
  def new
    @payment = Payment.new
  end

  # POST CREATE
  def create
    
    amount = 500

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path

    respond_to do |format|
      if @payment.save
        format.html { render :checkout, notice: 'Thank you for your donation.' }
        format.json { render :show, status: :created, location: donate_path }
      else
        raise @payment.errors.inspect
        format.html { render :new }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :message, :email)
  end

  def apply_params
    params.require(:apply).permit(
      :first_name,
      :last_name, 
      :email, 
      :suburb,
      :state,
      :postcode,
      :house_members,
      :other_animals,
      :hours_alone,
      :comments,
      :pet_id,
      :rescue_email
    )
  end 

  def donate_params
    params.require(:donate).permit(:amount, :description)
  end

end
