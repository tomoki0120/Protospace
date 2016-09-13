class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :image_url
      t.integer :status
      t.references :proto, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
