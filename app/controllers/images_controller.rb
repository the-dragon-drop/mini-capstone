class ImagesController < ApplicationController
  before_action :authenicate_admin!

  def new
    @product = Product.find(params[:product_id])
  end

  def create
    product = Product.find(params[:product_id])
    image = Image.new(
                      product_id: product.id,
                      name: params[:name],
                      url: params[:url]
                      )
    image.save
    flash[:success] = "Successfully added image to product"
    redirect_to "/products/#{product.id}"
  end

  def destroy
    image = Image.find(params[:id])
    product = image.product
    image.destroy
    flash[:warning] = "Image was removed"
    redirect_to "/products/#{product.id}"
  end
end
