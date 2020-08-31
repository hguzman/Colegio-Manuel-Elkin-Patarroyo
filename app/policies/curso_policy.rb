class CursoPolicy
  attr_reader :user, :curso

  def initialize(user, curso)
    @user = user
    @curso = curso
  end

  def index?
    @user.has_role? :admin
    # false

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
