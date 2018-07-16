class RemoveQuantityFromBooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :total, :integer
    remove_column :books, :available, :integer
  end
end
