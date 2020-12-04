class Materia < ApplicationRecord
    belongs_to :user
    belongs_to :curso
    has_many :notas

    # Validaciones
    validates :codigo, :nombre, presence: true
    validates :codigo, uniqueness: true
    validates :codigo, numericality: { only_integer: true }
end
