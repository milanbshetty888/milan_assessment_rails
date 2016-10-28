class RemovePasswordSaltFromUserdetails < ActiveRecord::Migration
  def change
    remove_column :userdetails, :password_salt, :string
  end
end
