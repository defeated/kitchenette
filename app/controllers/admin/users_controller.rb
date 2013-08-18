class Admin::UsersController < ApplicationController
  respond_to :html

  def index
    @users = User.order(:last_name, :first_name)
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find params[:id]
  end

  def create
    @user = User.new user_params
    if @user.save
      flash.notice = 'User was successfully created.'
    end
    respond_with @user, location: admin_users_path
  end

  def update
    @user = User.find params[:id]
    if @user.update(user_params)
      flash.notice = 'User was successfully updated.'
    end
    respond_with @user, location: admin_users_path
  end

  def destroy
    @user = User.find params[:id]
    if @user.destroy
      flash.notice = 'User was successfully deleted.'
    end
    respond_with @user, location: admin_users_path
  end

  private

    def user_params
      params.require(:user).permit(:email, :first_name, :last_name, :remote)
    end
end
