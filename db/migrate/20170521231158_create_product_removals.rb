class CreateProductRemovals < ActiveRecord::Migration[5.0]
  def change
    create_table :product_removals do |t|
      t.datetime :fecha_eliminacion
      t.integer :product_detail_id
      t.string :observaciones

      t.timestamps
    end
  end
end
