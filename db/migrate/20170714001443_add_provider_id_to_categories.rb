class AddProviderIdToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :provider_id, :integer
  end
end
