class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
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

  private

  def booking_params
    params.require(:booking).permit(:user_id, :start_date, :end_date)
  end
end
