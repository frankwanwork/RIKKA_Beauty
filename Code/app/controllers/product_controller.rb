class ProductController < ApplicationController
  private
  def product_params
    params.require(:product).permit(:product_name, :description, :tags, :price)
  end

  def show
    @products = Product.all
  end

  def add
    new_product = product_params
    puts "gg"
    puts params

    @picture = Picture.new
    @picture.data = params.require(:product)[:image].data
    @picture.pic_type = params.require(:product)[:image].content_type
    @picture.filename = params.require(:product)[:image].filename
    @picture.save

    puts "uu"
    new_product[:pictures] = @picture.id
#    begin
      @product = Product.create!(productName: new_product[:product_name], description: new_product[:description], tags: new_product[:tags], price: new_product[:price])
#    rescue StandardError => e
#      flash[:warning] = "Product already exists!"
#      puts e.message
#      return
#    end
    puts "pp"
    flash[:notice] = "#{@product.productName} was successfully created."
    redirect_to product_index_path
  end

  def search
    @product = Product.all
    @pics = Picture.all
    puts @product
    puts @pics
  end

  def edit
    if session[:usertype == 1]
      Product.update_attributes!(product_params)
      redirect to product_index_path 
    else
      flash[:notice] = "Operation denied."
    end
  end
end
