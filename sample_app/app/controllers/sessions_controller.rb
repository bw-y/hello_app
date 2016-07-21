class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # login user, then rewrite user page
    else
      # create an error info
      flash[:danger] = 'Invalid email/password combination' # 不完全正确
      render 'new'
    end
  end

  def destroy
  end
end