class AddPhotoToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :photo, :string
  end
end
