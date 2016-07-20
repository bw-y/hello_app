class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # login user, then rewrite user page
    else
      # create an error info
      render 'new'
    end
  end

  def destroy
  end
end
