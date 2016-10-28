class RemovePasswordHashFromUserdetails < ActiveRecord::Migration
  def change
    remove_column :userdetails, :password_hash, :string
  end
end
