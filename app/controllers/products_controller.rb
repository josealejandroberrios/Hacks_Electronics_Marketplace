class ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @products = Product.get_info
  end 

  def update
    #puts "Parametros #{params}"
    RestClient.put "#{params['path']}#{params['id']}", {quantity: params['quantity']}
    redirect_to products_path
  end
end
