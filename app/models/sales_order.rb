# == Schema Information
#
# Table name: sales_orders
#
#  id         :integer          not null, primary key
#  date_order :date
#  product_id :integer
#  store_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_sales_orders_on_product_id  (product_id)
#  index_sales_orders_on_store_id    (store_id)
#

class SalesOrder < ApplicationRecord
  belongs_to :product
  belongs_to :store
end
