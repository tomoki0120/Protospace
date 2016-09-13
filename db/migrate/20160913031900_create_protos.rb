class CreateProtos < ActiveRecord::Migration
  def change
    create_table :protos do |t|
      t.string :title
      t.text :catch_copy
      t.text :concept
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
