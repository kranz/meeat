class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :value
      t.integer :restaurant_id
      t.integer :contact_type_id

      t.timestamps
    end
  end
end
