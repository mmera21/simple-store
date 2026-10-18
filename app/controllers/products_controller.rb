class ProductsController < ApplicationController
  
  # All the products with index
  # https://guides.rubyonrails.org/getting_started.html
  def index
    @products = Product.all
  end
end
