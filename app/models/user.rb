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
  def user_mailer
    UserMailer.bienvenida_mailer(@user).deliver_now
  end

  # validates :identifiacion, :nombres, :apellidos, :telefono, :direccion, :email, :password, presence: true
  # validates :telefono,numericality: { only_integer: true }, length: { maximum: 10 }
  # validates :identifiacion, :email, uniqueness: true
  # validates :identifiacion, length: { maximum: 10 }
  # validates :nombre, :apellido, format: { with: /\A[a-zA-Z]+\z/,
  #  message: "Solo se permiten letras" }
end
