class AdminsController < ApplicationController
  before_action :signed_in_admin, only: [:edit, :update, :show]
  before_action :correct_admin, only: [:edit, :update, :show]

  def new
    @admin = Admin.new
  end

  def show
    @welcome = Welcome.first
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      sign_in @admin
      redirect_to @admin
    else
      render 'new'
    end
  end

  def edit
    
  end

  def update
    if @admin.update_attributes(admin_params)
      flash[:success] = "Profile updated"
      redirect_to @admin
    else
      render 'edit'
    end
  end

  private
    def admin_params
      params.require(:admin).permit(:name, :email, :password, :password_confirmation)
    end
end