module SessionsHelper

  # login a user
  def log_in(user)
    session[:user_id] = user.id
  end

  # return current user(if exist.)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # if user current, then return true, else false.
  def logged_in?
    @current_user.nil?
  end

  # exit current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
