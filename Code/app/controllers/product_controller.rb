class ProductController < ApplicationController
  private
  def product_params
    params.requrie(:product).permit(:productName, :description, :tags, :pictures)
  end

  def show
    @products = Product.all
  end

  def add
    new_product = product_params
    begin
      @product = Product.create!(new_product)
    rescue StandardError => e
      flash[:warning] = "Product already exists!"
      puts e.message
      return
    end

    flash[:notice] = "#{@product.productName} was successfully created."
    redirect_to product_show_path
  end

  def search
  end

  def edit
    if session[:usertype == 1]
      Product.update_attributes!(product_params)
      redirect to product_show_path
    else
      flash[:notice] = "Operation denied."
    end
  end
end
