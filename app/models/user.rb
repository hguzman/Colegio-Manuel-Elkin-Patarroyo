class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  mount_uploader :picture, PictureUploader
  has_many :anotaciones
  has_many :materias

  # Roles con rolify

  #attr_accessible :role_ids

  # accepts_nested_attributes_for
end
