# frozen_string_literal: true

class Companies::SessionsController < Devise::SessionsController
  include Accessible
  skip_before_action :check_user, only: :destroy
  before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    super
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :name_kana, :tell, :post_code, :address, :location, :image_id, :introduction, :salary, :condition, :offering, :status, :admin])
  end
end
