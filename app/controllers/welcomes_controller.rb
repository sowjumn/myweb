class WelcomesController < ApplicationController
  before_action :signed_in_admin, only: [:edit, :update]
	def index
    @welcome = Welcome.first
	end

  def edit
    @welcome = Welcome.first
  end

  def update
    @welcome = Welcome.first
    if @welcome.update_attributes(welcome_params)
      redirect_to :root
    else
      render 'edit'
    end
  end

  private
    def welcome_params
      params.require(:welcome).permit(:para1,:para2,:para3,:para4)
    end 
end