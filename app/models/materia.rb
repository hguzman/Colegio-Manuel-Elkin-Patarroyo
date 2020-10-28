class Materia < ApplicationRecord
    belongs_to :user
    belongs_to :curso
end
