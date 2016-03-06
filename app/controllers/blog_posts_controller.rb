class BlogPostsController < ApplicationController 
  before_action :find_blog_post, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:index, :show]

  def index
    @blog_posts = BlogPost.all
  end

  def new
    @blog_post = BlogPost.new
  end

  def show
  end

  def create
    @blog_post = BlogPost.create(blog_post_params)
    @blog_post.photo = params[:photo]

    if @blog_post.save
      flash[:notice] = "Post created!"
      redirect_to blog_posts_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @blog_post.update_attributes(blog_post_params)
      flash[:notice] = "Post updated!"
      redirect_to @blog_post
    else
      render 'edit'
    end
  end

  def destroy
    @blog_post.destroy
    redirect_to blog_posts_path
  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :body, :photo)
  end

  def find_blog_post
    @blog_post = BlogPost.friendly.find(params[:id])
  end
end