class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|

      t.string :nombre
      t.string :descripcion, default: "Descripcion Producto"
      t.string :marca, default: "Marca Producto"    
      t.integer :category_id
      t.integer :stock_total, default: 20
      t.integer :stock_fisico, default: 20
      t.integer :stock_disponible, default: 20
      t.string :estado, default: "Disponible"
      t.integer :dias_prestamo, default: 5
      t.string :imagen
      
      t.timestamps
    end
  end
end
