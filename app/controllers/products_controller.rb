class ProductsController < ApplicationController
  def index
    @products = Product.all.published.includes(:category).references(:category)

  end

  def show
    @product = Product.find(params[:id])
    # byebug
  end

  def new
    @product = Product.new
  end

  def create
    # byebug
      product_params = params.require(:product).permit( :title,
                                                  :description,
                                                  :price,
                                                  :published,
                                                  :category_id,
                                                  :country)
      @product = Product.new(product_params)
      if @product.save
          flash[:notice] = "You have sucessfully created the product"
          redirect_to products_url
      else
        flash[:notice] = "Error in form "
        render :new
      end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
