class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.new
  end

  def update
  end

  def edit
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
  end

  def destroy
  end

  private

  def set_posting
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :content,)
  end

end
