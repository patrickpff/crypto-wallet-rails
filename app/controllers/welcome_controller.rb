class WelcomeController < ApplicationController
  def index
    @author = "Patrick Ferreira"
    @app_name = "Crypto Wallet"
    @course = "Ruby on Rails 5.x - The Complete Guide"
    @name = params[:name]
  end
end
