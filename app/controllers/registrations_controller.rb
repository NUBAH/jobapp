class RegistrationsController < Devise::RegistrationsController


	def new
		super
	end

	def create
		@user = User.new
		@user.userable = user.userable
		@user.name = user.name
		@user.name_kana= user.name_kana
		@user.tell = user.tell
		@user.email = user.email
		@user.password = user.password
		@user.password_confirmation = user.password_confirmation

		if @user.save
			if @user.userable == company
				redirect_to user_path(current_user)
			elsif @user.userable == employee
				redirect_to company_show_path(current_user)
			elsif @user.admin == true
				redirect_to root_path
			end
		else
			render :new
		end

	end

	def update
		super
	end
end