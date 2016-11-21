class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
      if @user.save
        login
        redirect_to '/'
      else
        redirect_to 'signup'
      end
  end

  def show
    @user = current_user
  end

  def edit
  end

  def udpate
  end

  def delete
  end

private

  def users_params
    params.require(:user).permit(:username, :email, :password)
  end

end
