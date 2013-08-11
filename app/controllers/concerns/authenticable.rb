module Authenticable
  extend ActiveSupport::Concern

  def current_user
    @current_user ||= if user_id = session[:user_id]
      User.find_by(id: user_id)
    end
  end

  def current_user=(user)
    session[:user_id] = user.id
  end

  def logged_in?
    current_user.present?
  end

  def authenticate!
    redirect_to new_session_path unless logged_in?
  end

  included do
    helper_method :current_user
    helper_method :logged_in?
  end
end
