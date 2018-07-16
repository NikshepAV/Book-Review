class AddQuantityToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :total, :integer, :default => 1, :nil => false
    add_column :books, :available, :integer, :default => 1, :nil => false
  end
end
