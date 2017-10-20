class AddPhotoToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :photo, :string
  end
end
