class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :user_mailer
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable, :timeoutable

         has_many :anotaciones
         belongs_to :curso, optional: true
         

         mount_uploader :avatar, AvatarUploader, optional: true

         has_many :materias, dependent: :destroy

         has_many :notas, dependent: :destroy

         has_many :anotaciones, dependent: :destroy

         has_and_belongs_to_many :asistencias

         has_many :tareas

        
  def user_mailer
    UserMailer.bienvenida_mailer(@user).deliver_now
  end

  validates :identificacion, :primer_nombre, :primer_apellido,:segundo_apellido, :direccion, presence: true
  validates :telefono,numericality: { only_integer: true }, length: { maximum: 10 }
  validates :identificacion, :email, uniqueness: true
  validates :identificacion, length: { maximum: 10 }
end
