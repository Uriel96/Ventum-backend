class UsersController < ApplicationController
  before_action :set_user, only: [:show]
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

  # GET /user
  def index
    @users = User.all
    response.headers['X-Total-Count'] = '10'
    response.headers['Access-Control-Allow-Headers'] = 'X-Total-Count'

    render json: @users
  end

  def show
    render json: @users
  end

  def login
    authenticate params[:email], params[:password]
  end

  def logout
    user = User.where(email: params[:email]).first
    
    if user and user.update(access_token: nil)
      render json: user
    else
      render json: {
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

  def set_user
    @user = User.find(params[:id])
  end


  def user_params
    params.permit(
      :name,
      :email,
      :password
    )
  end
end