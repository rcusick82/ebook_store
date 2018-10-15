class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
        t.integer :price, null: false
        t.integer :quantity, null: false

      t.timestamps
    end
  end
end
