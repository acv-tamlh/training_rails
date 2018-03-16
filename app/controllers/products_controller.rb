class ProductsController < ApplicationController
  def index
    @products = Product.all.published
  end
end
