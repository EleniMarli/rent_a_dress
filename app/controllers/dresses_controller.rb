class DressesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_dress, only: %i[edit update]

  def index
    @dresses = Dress.all
    @user = current_user
  end

  def show
    @dress = Dress.find(params[:id])
    @review = Review.new(dress: @dress)
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

  def edit
    @dress = Dress.find(params[:id])

  end

  def update
    @dress = Dress.find(params[:id])
    if @dress.update(dress_params)
      redirect_to dress_path(@dress), notice: 'Dress was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_dress
    @dress = Dress.find(params[:id])
  end

  def dress_params
    params.require(:dress).permit(:title, :description, :size, :color, :category, :price_per_day)
  end
end
