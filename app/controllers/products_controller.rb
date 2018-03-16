class ProductsController < ApplicationController
  def index
    @products = Product.all.published.includes(:category).references(:category)

  end

  def show
    @product = Product.find(params[:id])
    # byebug
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
