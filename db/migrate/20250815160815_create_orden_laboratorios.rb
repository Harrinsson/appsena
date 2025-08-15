class CreateOrdenLaboratorios < ActiveRecord::Migration[8.0]
  def change
    create_table :orden_laboratorios do |t|
      t.references :paciente, null: false, foreign_key: true
      t.date :fecha_orden
      t.string :codigo_documento
      t.string :numero_orden

      t.timestamps
    end
  end
end
