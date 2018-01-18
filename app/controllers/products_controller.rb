class ProductsController < ApplicationController
  def index
    @products = Product.get_info
  end 
end
