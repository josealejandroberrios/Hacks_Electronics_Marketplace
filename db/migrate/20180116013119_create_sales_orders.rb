class CreateSalesOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :sales_orders do |t|
      t.date :date_order
      t.references :product, foreign_key: true
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
