class CreateWeekClosings < ActiveRecord::Migration
  def change
    create_table :week_closings do |t|
      t.integer :time_table_id
      t.integer :weekday
      t.string :type

      t.timestamps
    end
  end
end
