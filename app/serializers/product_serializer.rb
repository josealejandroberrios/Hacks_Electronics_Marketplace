class ProductSerializer < ActiveModel::Serializer
  attributes :name, :image, :description, :price, :quantity
end
