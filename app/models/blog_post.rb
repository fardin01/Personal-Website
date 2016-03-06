class BlogPost < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader

  extend FriendlyId
  friendly_id :title, use: :slugged
end
