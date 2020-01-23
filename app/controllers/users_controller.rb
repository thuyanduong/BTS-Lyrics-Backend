class UsersController < ApplicationController
  def profile
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user = User.find(payload["user_id"])
    render json: user.user_data, status: :accepted
  end

end
