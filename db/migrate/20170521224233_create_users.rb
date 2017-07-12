class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido, default: "Apellido Test"
      t.string :telefono, default: "93424562"
      t.string :email
      t.string :password
      t.string :rol

      t.timestamps
    end
  end
end
