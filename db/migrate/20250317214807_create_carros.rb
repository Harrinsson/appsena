class CreateCarros < ActiveRecord::Migration[8.0]
  def change
    create_table :carros do |t|
      t.integer :id_Propietario
      t.string :marca
      t.string :matricula
      t.string :color

      t.timestamps
    end
  end
end
