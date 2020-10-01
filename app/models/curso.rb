class Curso < ApplicationRecord
    resourcify
      has_many :users, dependent: :nullify
      accepts_nested_attributes_for :users
end
