class ProjectsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  def index
  end

  private 
    def project_params
      params.require(:project).permit(:title,:description,:detail1, :detail2, :detail3, :detail4, :detail5)
    end
end