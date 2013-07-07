class CreateTimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|
      t.integer :time_table_id
      t.string :name
      t.integer :position
      t.integer :UTC_position
      t.time :from
      t.time :to

      t.timestamps
    end
  end
end
