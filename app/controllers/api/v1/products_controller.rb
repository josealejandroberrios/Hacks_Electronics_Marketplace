class Api::V1::ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index 
    product = Product.all 
    render json: Product.new.modify_image(Product.all)
    #render json: {store: {name: Store.find(7).name, category: Store.find(7).category, products: Product.all}  }
  end

  def show
    render json: Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    # puts "Cantidad del producto #{@product.quantity.class}"
    # puts "Cantidad del producto #{params[:quantity].to_i.class}"
    if @product.quantity >= params[:quantity].to_i
      @product.update(quantity: @product.quantity - params[:quantity].to_i)
      render json: @product
    else
      render flash[:notice] = "You have successfully logged out." #### poner una respuesta, no esta dadno alguna
    end
  end
end
