class StoreSerializer < ActiveModel::Serializer
  attributes :name, :category, :connecting_link, :list_products
end
