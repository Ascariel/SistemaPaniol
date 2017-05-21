class CreateProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :descripcion, default: "Descripcion Producto"
      t.string :marca, default: "Marca Producto"    
      t.integer :category_id
      t.integer :stock_total, default: 20
      t.integer :stock_fisico, default: 20
      t.integer :stock_disponible, default: 20
      t.string :estado, default: "Disponible"
      t.string :imagen

      t.timestamps
    end
  end
end
