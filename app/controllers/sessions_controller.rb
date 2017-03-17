class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password]) && user.admin
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to '/users'
    elsif user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash[:message] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
  
end
