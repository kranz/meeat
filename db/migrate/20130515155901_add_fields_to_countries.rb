class AddFieldsToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :code, :string
    add_column :countries, :code3, :string
    add_column :countries, :number, :string
  end
end
