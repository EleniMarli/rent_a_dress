class UsersController < ApplicationController
  def show
    @user = current_user
    @dresses = @user.dresses
  end
end
