class UsersController < ApplicationController
    before_action :authenticate, only: [:index]

  def create
    user = User.create(user_params)
    if user.valid?
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: 422
    end
  end

  def index
    users = User.all
    render json: users
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
