class UsersController < ApplicationController

  def index
    render 'landings/index'
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to itineraries_path
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.itineraries.destroy
    @user.session.destroy
    @user.destroy #Set to nil for sessions, not objects

    redirect_to ('/')
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
