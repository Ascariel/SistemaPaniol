class ChangeReservaIdName < ActiveRecord::Migration[5.0]
  def change
    rename_column :provider_requests, :reserva_id, :solicitud_reserva_id
  end
end
