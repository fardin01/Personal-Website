class BlogPost < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  default_scope { order('created_at DESC') }

  extend FriendlyId
  friendly_id :title, use: :slugged
end
