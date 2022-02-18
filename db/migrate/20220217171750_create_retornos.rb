class CreateRetornos < ActiveRecord::Migration[6.1]
  def change
    create_table :retornos do |t|
      t.decimal :monto, precision: 10, scale: 2
      t.string :nombre
      t.text :comentarios
      t.string :cuenta
      t.string :clabe
      t.string :swift
      t.string :banco
      t.string :dir_banco
      t.string :no_tarjeta
      t.boolean :valido
      t.belongs_to :movimiento, null: false, foreign_key: true

      t.timestamps
    end
  end
end
