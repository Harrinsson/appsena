class OrdenLaboratorio < ApplicationRecord
  belongs_to :paciente

  validates :fecha_orden, :codigo_documento, :numero_orden, presence: true
end
