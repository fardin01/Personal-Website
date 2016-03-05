class BlogPost < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
end
