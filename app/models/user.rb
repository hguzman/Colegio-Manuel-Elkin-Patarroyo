class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable, :timeoutable

         has_many :anotaciones
         belongs_to :curso, optional: true

         mount_uploader :avatar, AvatarUploader, optional: true

         has_many :materias, dependent: :destroy  

         has_many :notas, dependent: :destroy

         has_many :anotaciones, dependent: :destroy   
          
         has_and_belongs_to_many :asistencias
end
