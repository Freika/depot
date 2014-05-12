class RenamingColumnAddessToAddress < ActiveRecord::Migration
  def change
    rename_column :orders, :addess, :address
  end
end
