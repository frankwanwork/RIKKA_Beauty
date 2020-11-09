class ProductController < ApplicationController

  def product_params
    params.require(:product).permit(:product_name, :description, :price, :tag_list)
  end
  
  def show
    case request.method_symbol
    when :get
      @products = Product.all
      @products.each do |product|
        if product.pics.nil?
          return
        else
         product.pics = "product/pic/" + product.pics
          puts product.pics
        end
      end
      
    when :post
      if params[:commit] =="Search" 
        puts "enter search"
      # @product = Product.wher e("productName ilike ?","%#{params[:product_name]}%" )
        puts params.require(:product)[:product_name]
        temp = params.require(:product)[:product_name]
       @product = Product.find_by(productName: temp)
      end 
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
      unless params.require(:product)[:image].blank?
         @picture = Picture.new
         @picture.data = params.require(:product)[:image].read
         @picture.pic_type = params.require(:product)[:image].content_type
         @picture.filename = params.require(:product)[:image].original_filename
         @picture.save
         new_product[:pictures] = @picture.id
      end
      
      begin
        @product = Product.create!(productName: new_product[:product_name], description: new_product[:description], price: new_product[:price], pics: new_product[:pictures])
       # puts @product.productName
        redirect_to product_index_path
      rescue StandardError => e
        return
      end
         # flash[:notice] = "#{@product.productName} was successfully created."
  end
end

  def edit
    puts session[:username]
    puts session[:usertype]
#    if session[:usertype] == 1
    if true
      case request.method_symbol
      when :get
        return
      when :post
        new_product = product_params
        if params.require(:product)[:image] != nil
          @picture = Picture.new
          @picture.data = params.require(:product)[:image].read
          @picture.pic_type = params.require(:product)[:image].content_type
          @picture.filename = params.require(:product)[:image].original_filename
          @picture.save
          new_product[:pictures] = @picture.id
        end

        @product = Product.find_by(productName: new_product[:product_name])
        if(new_product[:description] != nil && new_product[:description].length >= 3)
          @product.update_attributes!(description: new_product[:description])
        end
         if(new_product[:pictures] != nil)
          @product.update_attributes!(pics: new_product[:pictures])
        end
        if(new_product[:price] != nil && new_product[:price].length >= 1)
          @product.update_attributes!(price: new_product[:price])
        end

        redirect_to product_index_path
      end
    end
  end
  
  def search
    #@product = User.find_by(productName: params.require(:product)[:product_name]
    #redirect_to product_index_path
    #temp = params[:product_name]
  #   @products = Product.all
  #   @products.each do |product|
  #     puts product.productName
  #   end
  # puts 111
  # puts  params.require(:product)[:product_name]
   puts params[:commit]
   redirect_to product_index_path 
  #redirect_to product_index_path(Product.where("productName ilike ?","%#{params[:product_name]}%" ))
   # @product = Product.where("productName ilike ?","%#{params.require(:product)[:product_name]}%" )
   # puts  @product
  end 
  
  def tagged
    if params[:tag].present?
      @product = Product.tagged_with(params[:tag])
    else
     @product = Product.all
    end
  end



end
