class AdminsController < ApplicationController
	before_filter :authenticate_admin!, except: [:index]

	def show
  		@admin = Admin.find(params[:id])
  		@membros = Membro.order :name
  		@advertencias = Advertencia.order("advdata").page(params['page']).per(10)
	end

	def index
  		@admins = Admin.order :nome
	end
end
