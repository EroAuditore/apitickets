class CreateMovimientos < ActiveRecord::Migration[6.1]
  def change
    create_table :movimientos do |t|
      t.decimal :total, precision: 10, scale: 2
      t.decimal :total_depositos, precision: 10, scale: 2
      t.decimal :total_retornos, precision: 10, scale: 2
      t.decimal :total_comisiones, precision: 10, scale: 2
      t.decimal :comision_agente, precision: 10, scale: 2
      t.decimal :comision_oficina, precision: 10, scale: 2
      t.string :estatus_movimiento
      t.boolean :estatus_deposito,  default: false
      t.boolean :estatus_retorno, default: false
      t.boolean :estatus_comision, default: false
      t.belongs_to :ticket, optional: true
      t.belongs_to :agente
      t.belongs_to :cliente
      t.timestamps
    end
  end
end
