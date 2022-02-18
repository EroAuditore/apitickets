class CreateSolicitudFacturas < ActiveRecord::Migration[6.1]
  def change
    create_table :solicitud_facturas do |t|
      t.string :estatus
      t.decimal :total, precision: 10, scale: 2
      t.text :comentarios
      t.belongs_to :agente
      t.belongs_to :cliente

      t.timestamps
    end
  end
end
