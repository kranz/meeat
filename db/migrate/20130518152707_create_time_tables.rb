class CreateTimeTables < ActiveRecord::Migration
  def change
    create_table :time_tables do |t|
      t.string   :description
      t.boolean  :dst
      t.integer  :restaurant_id
      t.string   :time_zone

      t.timestamps
    end
  end
end
