class AdminsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      flash[:success] = "You have successfully signedup. It takes 24 hours to activate ur login"
      redirect_to @admin
    else
      render 'new'
    end
  end

  def show
  end

  private
    def admin_params
      u = params.require(:admin).permit(:name, :email, :password, :password_confirmation)
      u["trust"] = false
      u
    end
end