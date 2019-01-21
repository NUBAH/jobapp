class CompaniesController < ApplicationController
	before_action :authenticate_company!, except: [:index, :show]

	def index
		@company = Company.where(status: "release").where.not(offering: "0").order('updated_at').reverse_order
		@company_all = Company.all
	end

	def show
		@company = Company.find(params[:id])
	end

	def edit
		@company = Company.find(params[:id])
	end

	def update
		@company = Company.find(params[:id])
		if @company.update(company_params)
			redirect_to company_path, notice: "情報を編集しました。"
		else
			render :edit
		end
	end

	def destroy
		company = Company.find(params[:id])
		company.destroy
		redirect_to root_path, notice: "情報を削除しました。"
	end

	private
	def company_params
		params.require(:company).permit(:name, :name_kana, :tell, :post_code, :address, :location, :image, :introduction, :salary, :condition, :offering, :status, :admin, :email, :password, :encrypted_password)
	end
end
