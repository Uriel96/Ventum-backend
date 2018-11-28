class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: %i[login register]

  # POST /register
  def register
    @user = User.create(user_params)
   if @user.save
    response = { message: 'User created successfully'}
    render json: response, status: :created 
   else
    render json: @user.errors, status: :bad
   end 
  end

  def login
    authenticate params[:email], params[:password]
  end

  def logout
    user = User.where(email: params[:email]).first

    if user and user.update(access_token: nil)
      render json: user
    else
      render json: json: {
        message: 'Could not log out'
      }, status: :unprocessable_entity
    end
  end
  
  def test
    render json: {
      message: 'You have passed authentication and authorization test'
    }
  end
  
  private
  
  def authenticate(email, password)
    command = AuthenticateUser.call(email, password)

    if command.success?
      render json: {
        access_token: command.result,
        message: 'Login Successful'
      }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

  def user_params
    params.permit(
      :name,
      :email,
      :password
    )
  end
end