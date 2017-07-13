class AddDefaultToCantidadSolicitada < ActiveRecord::Migration[5.0]
  def change
    change_column :solicitud_reservas, :productos_solicitados, :integer, default: 1
  end
end
