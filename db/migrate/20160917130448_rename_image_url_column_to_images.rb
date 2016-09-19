class RenameImageUrlColumnToImages < ActiveRecord::Migration
  def change
    rename_column :images, :image_url, :photo
  end
end
