class CreateTimeZones < ActiveRecord::Migration
  def change
    create_table :time_zones do |t|
      t.string :code
      t.string :name
      t.decimal :offset

      t.timestamps
    end
  end
end
