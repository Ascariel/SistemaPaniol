class CreateProductDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :product_details do |t|
      t.string :estado
      t.integer :product_id
      t.datetime :fecha_ingreso

      t.timestamps
    end
  end
end
