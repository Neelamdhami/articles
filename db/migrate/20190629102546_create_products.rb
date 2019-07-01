class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :description
      t.datetime :start_date
      t.datetime :end_time
      t.integer :quantity

      t.timestamps
    end
  end
end
