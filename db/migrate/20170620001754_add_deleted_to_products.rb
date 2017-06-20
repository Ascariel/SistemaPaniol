class AddDeletedToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :deleted, :boolean
  end
end
