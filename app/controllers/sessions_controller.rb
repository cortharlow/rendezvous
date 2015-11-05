class SessionsController < ApplicationController

  def new
  end

  def create
    #User enters email and password
    #Create new session if they match

    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to("/")
    else
      redirect_to('/login')
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to('/')
  end
end
