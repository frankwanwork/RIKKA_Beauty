class ProductController < ApplicationController

  def show
    @products = Product.all
    @products.each do |product|
      product.pics = "product/pic/" + product.pics
      puts product.pics
    end
  end

  def pic
    pic = Picture.find_by(id: params[:id])
    send_data pic.data, :filename => pic.filename, :type => pic.pic_type
  end

  def add
    case request.method_symbol
    when :get
      return
    when :post
      new_product = product_params
      @picture = Picture.new
      @picture.data = params.require(:product)[:image].read
      @picture.pic_type = params.require(:product)[:image].content_type
      @picture.filename = params.require(:product)[:image].original_filename
      @picture.save

      new_product[:pictures] = @picture.id
#    begin
        @product = Product.create!(productName: new_product[:product_name], description: new_product[:description], tags: new_product[:tags], price: new_product[:price], pics: new_product[:pictures])
#    rescue StandardError => e
#      flash[:warning] = "Product already exists!"
#      puts e.message
#      return
#    end
      flash[:notice] = "#{@product.productName} was successfully created."
      redirect_to product_index_path
    end
  end

  def search
    @product = Product.all
    @pics = Picture.all
    puts @product
    puts @pics
  end

  def edit
    if session[:usertype == 1]
      case request.method_symbol
      when :get
        return
      when :post
        new_product = product_params
        @picture = Picture.new
        @picture.data = params.require(:product)[:image].read
        @picture.pic_type = params.require(:product)[:image].content_type
        @picture.filename = params.require(:product)[:image].original_filename
        @picture.save

        new_product[:pictures] = @picture.id
        begin
          @product = Product.update_attributes!(productName: new_product[:product_name], description: new_product[:description], tags: new_product[:tags], price: new_product[:price], pics: new_product[:pictures])
        rescue StandardError => e
          #flash[:warning] = "Product already exists!"
          return
        end
        #flash[:notice] = "#{@product.productName} was successfully created."
        redirect_to product_index_path
      end
    else
      #flash[:notice] = "Operation denied."
    end
  end

  private
  def product_params
    params.require(:product).permit(:product_name, :description, :tags, :price)
  end

end
