class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :category
      t.string :connecting_link
      t.string :list_products
      t.string :buy_product

      t.timestamps
    end
  end
end
