class UserController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      puts "User Created!"
      #confirm Email here
    end
  end

  def delete
  end

  def user_params
    params.require(:user).permit(:firstName, :lastName, :email, :password)
  end
end
