class SuppliersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @suppliers = Supplier.all
  end

  def new
    
  end

  def create
    supplier = Supplier.new(
                            name: params[:name],
                            email: params[:email],
                            phone: params[:phone]
                            )
    supplier.save
    flash[:success] = 'Successfully Added Supplier'
    redirect_to "/suppliers/#{supplier.id}"
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update
    supplier = Supplier.find(params[:id])
    supplier.assign_attributes(
                               name: params[:name],
                               email: params[:email],
                               phone: params[:phone]
                               )
    supplier.save
    flash[:success] = 'Successfully updated Supplier'
    redirect_to "/suppliers/#{supplier.id}"
  end

  def destroy
    supplier = Supplier.find(params[:id])
    supplier.destroy
    flash[:warning] = 'Destroyed supplier'
    redirect_to '/suppliers'
  end
end
