class ChangeEstadoToInt < ActiveRecord::Migration[5.0]
  def change
    change_column :solicitud_reservas, :estado, 'integer USING CAST(estado AS integer)'
  end
end
