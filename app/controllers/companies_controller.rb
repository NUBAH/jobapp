class CompaniesController < ApplicationController
	before_action :authenticate_company!, except: [:index, :show]

	def index
		@company = Company.where(status: "release").order('updated_at')
	end

	def show
		@company =Company.find(params[:id])
	end

	def edit
	end

	def update
	end

	def destroy
		company = Company.find(params[:id])
		company.destroy
		redirect_to root_path
	end

	private
	def company_params
		params.require(:company).permit(:name, :name_kana, :tell, :post_code, :address, :location, :image_id, :introduction, :salary, :condition, :offering, :status, :admin, :email, :password, :encrypted_password)
	end
end
