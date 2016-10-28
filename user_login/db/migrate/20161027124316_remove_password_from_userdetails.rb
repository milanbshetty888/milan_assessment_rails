class RemovePasswordFromUserdetails < ActiveRecord::Migration
  def change
    remove_column :userdetails, :password, :string
  end
end
