class AdminsController < ApplicationController
	def show
  		@admin = Admin.find(params[:id])
	end

	def index
  		@admin = Admin.order :nome
	end
end
