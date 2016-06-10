class ProductsController < ApplicationController
  layout 'applicationhaml' 

  def index
  	@products = Product.all 
  end

  def new
  	@product = Product.new(product_type_id: params[:product_type_id]) 
  end

  def create
  	@product = Product.new(product_params)
  	if @product.save 
  		flash[:success] = "Product successfully created!"
       redirect_to root_url
  	else
  		render 'new'
  	end

  end

  def show
  	@product = Product.find(params[:id])
  end

  def update

  	@product = Product.find(params[:id])
  	if @product.update_attributes(product_params)
  		flash[:success] = "Product successfully updated!"
      redirect_to @product 
  	else
  		render 'edit'
  	end

  end

  def edit

  	@product = Product.find(params[:id])

  end

  private
  	def product_params
  		params.require(:product).permit!
  	end
end
