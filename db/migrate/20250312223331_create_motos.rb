class CreateMotos < ActiveRecord::Migration[8.0]
  def change
    create_table :motos do |t|
      t.integer :id_propietario
      t.string :marca
      t.string :matricula
      t.string :color

      t.timestamps
    end
  end
end
