class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :rfc
      t.string :direccion
      t.string :email
      t.references :agente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
