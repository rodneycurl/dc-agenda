class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.datetime :date_time
      t.string :address
      t.integer :price
      t.string :website

      t.timestamps
    end
  end
end
