class Comentario < ApplicationRecord
  belongs_to :anotacion
  record_operator_on :create, :update

  validates :comentario, presence: true
end
