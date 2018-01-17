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

require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
