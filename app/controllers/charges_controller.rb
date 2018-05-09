class ChargesController < ApplicationController
    def index 
        @payment = Payment.new
    end
    
    def new
        @amount = params[:amount]
        @amount = @amount.to_i * 100
    end
    
    def create
      # Amount in cents
      @amount = 500
    
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
    end


    private 
    def payment_params
        
    end
end