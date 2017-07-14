class CreateProviderRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :provider_requests do |t|
      t.integer :reserva_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
