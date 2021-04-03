class RemoveStartTimeFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :start_time, :datetime
    remove_column :bookings, :end_time, :datetime
  end
end
