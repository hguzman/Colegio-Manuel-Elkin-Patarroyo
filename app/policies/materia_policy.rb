class MateriaPolicy
    attr_reader :user, :materia

    def initialize(user, materia)
      @user = user
      @materia = materia
    end

    def index?
      @user.has_role? :admin
    end

    def new?
      @user.has_role? :admin
    end

    def show?
      @user.has_role? :admin
    end
    

    def edit?
      @user.has_role? :admin
    end
    
    
end