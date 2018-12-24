class CompaniesController < ApplicationController

	def index
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def company_params
		params.require(:company).permit(:name, :name_kana, :tell, :post_code, :address, :location, :image_id, :introduction, :salary, :condition, :offering, :status, :admin, :email, :password, :encrypted_password)
	end
end
end
