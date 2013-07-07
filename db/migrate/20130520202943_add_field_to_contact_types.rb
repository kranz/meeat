class AddFieldToContactTypes < ActiveRecord::Migration
  def change
    add_column :contact_types, :icon, :string
  end
end
