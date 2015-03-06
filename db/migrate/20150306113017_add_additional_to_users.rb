class AddAdditionalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bio, :text
    add_column :users, :area, :string
    add_column :users, :gender, :string
  end
end
