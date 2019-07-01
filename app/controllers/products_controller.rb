class ProductsController < ApplicationController

	def new
			#@product= Product.new
	end

	def create
		#render plain: params[:product].inspect
		@product = Product.new(product_params)
 
 		 @product.save
		  redirect_to @product
	end

	def show
		 @product = Product.find(params[:id])
	end

	def index
		 @products = Product.all
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])

	if @product.update(product_params)
     redirect_to @product
 	 else
  	  render 'edit'
  	 end
	end

	def destroy
    @product = Product.find(params[:my_product_id])
    @product.destroy
    redirect_to products_path
  end

private
  def product_params
    params.require(:product).permit(:product_name, :description, :start_date, :end_time, :quantity)
  end

end
