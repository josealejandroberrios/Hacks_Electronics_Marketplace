class Admin::StoresController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_store, only: [:edit, :update, :destroy]

  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to admin_stores_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @store.update(store_params)
      redirect_to admin_stores_path
    else 
      render :edit
    end
  end

  def delete
    @store.destroy
    redirect_to admin_stores_path
  end

  private
    def set_store
      @store = Store.find_by(id: params[:id])
    end

    def store_params
      params.require(:store).permit(:name, :category, :connecting, :list_product, :buy_product)
    end
end
