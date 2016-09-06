class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :position, :text
    add_column :users, :occupation, :text
    add_column :users, :profile, :text
  end
end
