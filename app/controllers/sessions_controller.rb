class SessionsController < ApplicationController
    # Create a user.
   def create
        user = User.new(params.require(:user).permit(:name, :description))

        if user.save
            render json: user, status: :created, location: user
        else
            render json: user.errors, status: :unprocessable_entity
        end
   end

   # Start a session.
   def update
        user = User.where(email: params[:email]).first

        if user&.valid_password?(params[:password])
            render json: user.as_json(only: [:email, :authentication_token]), status: :created
        else
            head(:unauthorized)
        end
    end

    # Check if session is active
   def index
        user = User.where(email: params[:email]).first

        if user.authentication_token == params[:authentication_token]
            render json: user.as_json(only: [:email, :authentication_token])
        else
            head(:unauthorized)
        end
   end

   # Log out
   def destroy
   end 
end  
