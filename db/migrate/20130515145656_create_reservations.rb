class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :restaurant_id
      t.datetime :date
      t.string :code
      t.integer :conference_id
      t.string :confirmation
      t.date :confirmation

      t.timestamps
    end
  end
end
