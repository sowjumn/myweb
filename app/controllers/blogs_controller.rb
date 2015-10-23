class BlogsController < ApplicationController
  before_action :signed_in_admin, only: [:new, :create]
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_url
    else
      render 'new'
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update_attributes(blog_params)
      redirect_to blogs_url
    else
      render 'edit'
    end
  end

  def index
    @blogs_all = Blog.all
    @blog = Blog.last
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_url
  end

  def show
    @blog = Blog.find(params[:id])
  end


  private
    def blog_params
      params.require(:blog).permit(:title, :para1, :para2, :para3, :avatar)
    end
end