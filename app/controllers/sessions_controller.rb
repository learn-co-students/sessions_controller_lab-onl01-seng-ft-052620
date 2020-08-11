class SessionsController < ApplicationController
  def new
  end

  # redirects to the login page if :name is nil
  # redirects to login page if :name is empty
  # sets session[:name] if :name was given
  # SessionsController post create redirects to "/" if logged in
  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else 
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  # leaves session[:name] nil if it was not set
  # clears session[:name] if it was set
  def destroy
    session.delete :name
  end
end
