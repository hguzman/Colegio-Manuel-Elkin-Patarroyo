class RolePolicy
    attr_reader :user, :role

    def initialize(user, role)
      @user = user
      @role = role
    end

    def index?
        @user.has_role? :admin
    end

    def show?
        @user.has_role? :admin
    end

    def new?
        @user.has_role? :admin
    end

    def edit?
        @user.has_role? :admin
    end
    
    
end