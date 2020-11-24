class Anotacion < ApplicationRecord
  belongs_to :user
  record_operator_on :create, :update
  has_many :comentarios, dependent: :destroy

  validates :fecha, :titulo, :contenido, presence: true
end
