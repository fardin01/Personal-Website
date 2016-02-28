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

end


