class AddFldsToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :user_id, :integer
    add_column :reservations, :status_id, :integer
    add_column :reservations, :confirmation_date, :datetime
    add_column :reservations, :start_time, :time
    add_column :reservations, :end_time, :time
    add_column :reservations, :duration, :int
    add_column :reservations, :slot, :int
  end
end
