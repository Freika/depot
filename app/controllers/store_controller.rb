class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    if session[:counter].nil?
      session[:counter]
    else
      session[:counter] = session[:counter] + 1
    end
  end
end
