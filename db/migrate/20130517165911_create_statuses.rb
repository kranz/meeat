class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :name
      t.string :code
      t.integer :order

      t.timestamps
    end
  end
end
