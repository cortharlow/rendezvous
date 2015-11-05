class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    user = User.new(user_params)

    if user.save
      redirect_to('/')
    else
      redirect_to('/users/new')
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :city,
      :password,
      :password_confirmation
    )
  end
end
