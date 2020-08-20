class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    if name.nil? || name == ""
      redirect_to login_path
    else
      session[:name] = name
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
  end

  private

  def session_params
    params.permit("name")
  end

end
