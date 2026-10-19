class ProductsController < ApplicationController
  
  # All the products with index
  # https://guides.rubyonrails.org/getting_started.html
  def index
    @products = Product.includes(:category).all
  end

  # This work for just show one specific product ( with the id )
  def show
    @product = Product.find(params[:id])
    end
  end
