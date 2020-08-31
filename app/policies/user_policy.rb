class UserPolicy

   attr_reader :user, :users

  def initialize(user, users)
    @user = user
    @users = users
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
