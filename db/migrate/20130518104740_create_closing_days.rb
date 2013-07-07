class CreateClosingDays < ActiveRecord::Migration
  def change
    create_table :closing_days do |t|
      t.integer :time_table_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
