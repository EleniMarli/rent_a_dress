class BookingsController < ApplicationController
  def new
    @dress = Dress.find(params[:dress_id])
    @booking = Booking.new
  end

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    @dress = Dress.find(params[:dress_id])
    @booking.status = 0
    @booking.dress = @dress
    @booking.user = @user
    if @booking.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
