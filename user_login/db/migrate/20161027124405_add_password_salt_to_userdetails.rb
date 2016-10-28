class AddPasswordSaltToUserdetails < ActiveRecord::Migration
  def change
    add_column :userdetails, :password_salt, :string
  end
end
