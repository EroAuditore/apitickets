class CreateComisions < ActiveRecord::Migration[6.1]
  def change
    create_table :comisions do |t|
      t.string :tipo
      t.decimal :monto, precision: 10, scale: 2
      t.string :comentario
      t.decimal :porcentaje, precision: 10, scale: 2
      t.belongs_to :movimiento, null: false, foreign_key: true

      t.timestamps
    end
  end
end
