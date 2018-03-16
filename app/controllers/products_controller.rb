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
                                                  :country,
                                                  :level)
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
    @product = Product.find(params[:id])
    render :new
  end

  def update
    product_params = params.require(:product).permit(  :title,
                                                        :description,
                                                        :price,
                                                        :category_id,
                                                        :country,
                                                        :published,
                                                        :level)

    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = 'Update sucessfully'
      redirect_to products_url
      else
        flash[:notice] = 'Update fail'
        render :new
      end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "Delete sucessfully"
      redirect_to products_path
    else
      flash[:notice] = "Delete Failed"
      redirect_to products_path    
    end
  end
end
