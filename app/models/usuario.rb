class Usuario < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
         
  mount_uploader :picture, PictureUploader       
  has_many :anotaciones
  has_many :materias
end
