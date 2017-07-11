class AddEscuelaToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :escuela, :string, default: "Informatica"
    add_column :users, :direccion, :string
  end
end
