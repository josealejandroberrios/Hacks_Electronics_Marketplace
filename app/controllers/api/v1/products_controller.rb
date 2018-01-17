class Api::V1::ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index 
    @products = Product.all
    render json: @products
  end

  def new
   
  end

  def create
  
  end

  def edit

  end

  def create
    
  end

  def destroy
    
  end

  private
    def product_params
      params.require(:product).permit(:name, :image, :description, :price, :quantity)
    end
end
