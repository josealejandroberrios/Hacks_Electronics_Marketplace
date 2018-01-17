# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  image       :string
#  description :text
#  price       :decimal(, )
#  quantity    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
    has_many :sales_order
end
