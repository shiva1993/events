class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :venue
      t.string :time
      t.float  :price

      t.timestamps null: false
    end
  end
end
