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
    @users.has_role? :admin or :docente or :estudiante

    end

    def edit?
    @users.has_role? :admin

    end
end

