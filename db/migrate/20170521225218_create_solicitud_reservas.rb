class CreateSolicitudReservas < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitud_reservas do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :productos_solicitados
      t.integer :productos_asignados
      t.datetime :fecha_inicio
      t.datetime :fecha_termino
      t.string :estado
      t.boolean :usar_afuera
      
      t.timestamps
    end
  end
end
