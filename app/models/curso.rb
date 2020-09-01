class Curso < ApplicationRecord
    resourcify
      has_many :users
end
