class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :rfc
      t.string :direccion
      t.string :email
      t.belongs_to :agente

      t.timestamps
    end
  end
end
