# == Schema Information
#
# Table name: stores
#
#  id              :integer          not null, primary key
#  name            :string
#  category        :string
#  connecting_link :string
#  list_products   :string
#  buy_product     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Store < ApplicationRecord
    has_many :sales_order
end
