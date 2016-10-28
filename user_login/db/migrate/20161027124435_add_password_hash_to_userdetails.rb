class AddPasswordHashToUserdetails < ActiveRecord::Migration
  def change
    add_column :userdetails, :password_hash, :string
  end
end
