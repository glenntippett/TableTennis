class RemoveGameFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :game_id
  end
end
