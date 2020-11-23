class Noticia < ApplicationRecord
    validates :titulo, :informacion, :fecha, presence: true
end
