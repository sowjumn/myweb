class ProjectsController < ApplicationController
  before_action :signed_in_admin, only: [:new, :create, :edit, :update, :destroy] 

  def new
    @project = Project.new
    5.times { @project.details.build }
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
    @projects = Project.all
  end

  private 
    def project_params
      params.require(:project).permit(:title,:description,details_attributes: [:bullet])
    end
end