class Paciente < ApplicationRecord
    has_many :orden_laboratorios, dependent: :destroy

    validates :tipoid, presence: true
    validates :identificacion, presence: true, uniqueness: { scope: :tipoid }
    validates :nombre, presence: true
    validates :fechanacido, presence: true
    validates :sexo, presence: true
    validates :correo, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :telefono, presence: true
end
