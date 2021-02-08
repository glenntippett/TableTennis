class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user)
  end
  
  def new
    # @game = Game.find(params[:game_id])
    @booking = Booking.new
  end

  def create
    # @game = Game.find(params[:game_id])
    @booking = Booking.new(booking_params)
    # @booking.game = @game
    @booking.user = current_user
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.delete
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :start_date, :start_time, :end_time)
  end
end
