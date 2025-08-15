class CreatePacientes < ActiveRecord::Migration[8.0]
  def change
    create_table :pacientes do |t|
      t.string :tipoid
      t.string :identificacion
      t.string :nombre
      t.date :fechanacido
      t.string :sexo
      t.string :direccion
      t.string :telefono
      t.string :correo

      t.timestamps
    end
  end
end
