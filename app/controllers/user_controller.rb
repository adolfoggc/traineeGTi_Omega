class UserController < ApplicationController
#controller errado
	def show
  		@user = User.find(params[:id])
	end

	def index
  		@users = User.order :nome
	end

end