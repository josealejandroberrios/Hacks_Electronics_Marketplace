class Api::V1::ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index 
    @products = Product.all
    render json: @products
  end

  def show
    @product = Product.find_by(id: params[:id])
    render json: @product
  end

  def update
    @product = Product.find_by(id: params[:id])
    #@product.update(quantity: @product.quantity + 20)
    if @product.quantity > 0
      @product.update(quantity: @product.quantity - 1)
      render json: @product
    else
      render json: @product.quantity
    
    end
  end
end
