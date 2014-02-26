class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.where(email: params[:session][:email]).first
    if admin && admin.authenticate(params[:session][:password])
      sign_in admin
      redirect_back_or admin
    else
      flash.now[:error] = "Invalid email/password combination"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end