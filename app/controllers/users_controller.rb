class UsersController < ApplicationController
  def show
    @user = current_user
    @dresses = @user.dresses
    @bookings = @user.bookings
    @booking_requests = Booking.joins(:dress).where(dresses: { user_id: current_user.id }).where.not( status: 2 )
  end
end
