class SiteController < ApplicationController
  def index
    @blogs = Blog.first(3)
  end

  def show
  end

  def contact
  end

  def cv
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


