class ProductsController < ApplicationController
	def index
		@the_user = User.find(params[:user_id])
		@the_products = @the_user.products
		render 'index'
	end

	def show

	end

	def create

	end

	def destroy
		
	end
end
