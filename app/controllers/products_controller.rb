class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show, :random]

  def index
      @products = Product.all
      sort_attribute = params[:sort]
      sort_order = params[:sort_order]
      discount = params[:discount]
      search_term = params[:search_term]
      category = params[:category]

      if category
        @products = Category.find_by(name: category).products
      end

      if search_term
        @products = @products.where(
                                  "name iLIKE ? OR description iLIKE ?", 
                                  "%#{search_term}%",
                                  "%#{search_term}%"
                                  )
      end


      if discount
        @products = @products.where("price < ?", discount)
      end

      if sort_attribute && sort_order
        @products = @products.order(sort_attribute => sort_order)
      elsif sort_attribute
        @products = @products.order(sort_attribute)
      end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(
                          name: params[:name],
                          description: params[:description],
                          price: params[:price],
                          supplier_id: params[:supplier][:supplier_id]
                          )
    if @product.save
      flash[:success] = "Product Created"
      redirect_to "/products/#{product.id}"
    else
      render 'new.html.erb'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.assign_attributes(
                              name: params[:name],
                              description: params[:description],
                              price: params[:price]
                             )
    product.save
    flash[:success] = "Product Updated"
    redirect_to "/products/#{product.id}"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:warning] = "Product Destroyed"
    redirect_to "/"
  end

  def random
    product = Product.all.sample
    redirect_to "/products/#{product.id}"
  end
end
