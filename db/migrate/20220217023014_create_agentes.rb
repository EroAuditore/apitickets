class CreateAgentes < ActiveRecord::Migration[6.1]
  def change
    create_table :agentes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
