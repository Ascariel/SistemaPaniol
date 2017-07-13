class AddDefaultToEstado < ActiveRecord::Migration[5.0]
  def change
    change_column :solicitud_reservas, :estado, :integer, default: 0
  end
end
