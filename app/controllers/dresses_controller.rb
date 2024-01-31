class DressesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @dresses = Dress.all
    @user = current_user
  end

  def new
    @dress = Dress.new
    @user = current_user
  end

  def create
    @dress = Dress.new(dress_params)
    @user = current_user
    @dress.user = @user

    if @dress.save
      redirect_to user_path(@user)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def dress_params
    params.require(:dress).permit(:title, :description, :size, :color, :category, :price_per_day)
  end
end
