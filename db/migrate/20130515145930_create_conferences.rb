class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.datetime :date
      t.string :code

      t.timestamps
    end
  end
end
