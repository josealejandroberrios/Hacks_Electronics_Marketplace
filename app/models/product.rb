# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  name               :string
#  image              :string
#  description        :text
#  price              :decimal(, )
#  quantity           :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Product < ApplicationRecord
  attr_accessor :store, :category
  has_many :sales_order
  has_attached_file :image, styles: { small: "64x64", med: "300x300", large: "522x620" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/  

  def self.get_info   ### metodo para parsear 
    items = []
    inf = JSON.parse RestClient.get("http://localhost:3000/api/v1/products") ### cambiar liks
    inf.each { |item|
      items << item
    }
  end
end
