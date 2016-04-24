class SiteController < ApplicationController
  def index
    if params[:id]
      @blog_posts = BlogPost.where('id < ?', params[:id]).limit(2)
    else
      @blog_posts = BlogPost.first(2)
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
  end

  def contact
  end

  def cv
  end

  def googled0a82c4a39ac538d
    render layout: false
  end

  def download
    file = "#{Rails.root}/fardin_khanjani_cv.pdf"
    if File.exists?(file)
      send_file file, :type=>"application/pdf", :x_sendfile=>true
    else
      flash[:notice] = 'File not found'
      redirect_to :index
    end
  end

end


