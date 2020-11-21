class Anotacion < ApplicationRecord
  belongs_to :user
  record_operator_on :create, :update
  has_many :comentarios, dependent: :destroy
end
