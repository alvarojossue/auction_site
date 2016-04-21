class UserController < ApplicationController
	def show
		@the_user = User.find(params[:id])
		render 'show'
	end

	def create
		@the_user = User.new(:name => params[:user][:name], :email => params[:user][:email])
		@the_user.save

		redirect_to "/users/#{@the_user.id}"
	end

	def destroy
	end

	def new
		@the_user = User.new
		render 'new'
	end
end


