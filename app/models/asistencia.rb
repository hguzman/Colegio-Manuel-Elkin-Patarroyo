class Asistencia < ApplicationRecord
    resourcify
    has_many :users
    accepts_nested_attributes_for :users
end
