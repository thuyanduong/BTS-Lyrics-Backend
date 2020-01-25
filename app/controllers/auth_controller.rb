class AuthController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if (user && user.authenticate(params[:password]) )
    #   token = encode({user_id: user.id})
    #   data = user.user_data
    #   data[:success] = true
    #   data[:message] = "Successfully logged in",
    #   data[:token] = token
    #   render json: data, status: :accepted
      render json: "correct username and password"
    else
      render json: {
        success: false,
        message: "Invalid username or password"
      }, status: :unauthorized
    end
  end
end
