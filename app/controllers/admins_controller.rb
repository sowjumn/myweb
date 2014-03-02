class AdminsController < ApplicationController
  before_action :signed_in_admin, only: [:edit, :update, :show]
  before_action :correct_admin, only: [:edit, :update, :show]

  def new
    @admin = Admin.new
  end

  def show
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      sign_in @admin
      flash[:success] = "You have successfully signedup. It takes 24 hours to activate ur login"
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
      u = params.require(:admin).permit(:name, :email, :password, :password_confirmation)
      u["trust"] = false
      u
    end

    def signed_in_admin
      unless signed_in?
        store_location
        redirect_to admin_signin_url, notice: "Please sign in"
      end
    end

    def correct_admin
      @admin = Admin.find(params[:id])
      redirect_to(root_url) unless (@admin.trust && current_admin?(@admin)) 
    end
end