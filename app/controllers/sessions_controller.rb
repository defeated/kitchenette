class SessionsController < ApplicationController
  skip_before_filter :authenticate!
  skip_before_filter :verify_authenticity_token, only: [ :create ]
  before_action :auth_failure, only: [ :create ]

  def new
    redirect_to '/auth/google'
  end

  def create
    self.current_user = User.for_email(user_params[:email], user_params)
    redirect_to root_path, notice: 'Successfully logged in.'
  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'Successfully logged out.'
  end

  private
    def auth_failure
      return unless message = params[:message]
      render text: message, layout: false, status: :unauthorized
    end

    def auth_params
      @auth_params ||= request.env['omniauth.auth']
    end

    def user_params
      @user_params ||= begin
        auth_params[:info].to_hash.symbolize_keys.
          slice(:email, :first_name, :last_name)
      end
    end

end
