class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

         has_many :anotaciones
         belongs_to :curso, optional: true

         mount_uploader :avatar, AvatarUploader, optional: true

         belongs_to :materia, optional: true

  has_many :anotaciones, dependent: :destroy   
end
