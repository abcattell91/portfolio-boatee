class RenameLocationToAddress < ActiveRecord::Migration[6.1]
  def change
    rename_column :boats, :location, :address
  end
end
