class MateriaPolicy

   attr_reader :user, :materia

  def initialize(user, materia)
    @user = user
    @users = materia
  end

  def index?
    @user.has_role? :admin
  end
  def new?
    @user.has_role? :admin
  end

  def show?
    @users.has_role? :amin

  end

  def edit?
    @users.has_role? :admin

  end
end
