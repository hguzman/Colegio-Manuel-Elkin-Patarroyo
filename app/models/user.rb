class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  mount_uploader :picture, PictureUploader
  belongs_to :curso, optional: true
  has_many :anotaciones, dependent: :destroy
  has_many :materias, dependent: :destroy
  has_and_belongs_to_many :asistencias
  #Validaciones

  # validates :identificacion, :nombre, :apellido, :telefono, :direccion, :email, :password, presence: true
  # validates :telefono,numericality: { only_integer: true }, length: { maximum: 10 }
  # validates :identificacion, :email, uniqueness: true
  # validates :identificacion, length: { maximum: 10 }
  # validates :nombre, :apellido, format: { with: /\A[a-zA-Z]+\z/,
  #  message: "Solo se permiten letras" }
  # Roles con rolify

  #attr_accessible :role_ids

  # accepts_nested_attributes_for
  accepts_nested_attributes_for :curso
end
