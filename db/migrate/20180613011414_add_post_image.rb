class AddPostImage < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :post_image, :string
  end
end
