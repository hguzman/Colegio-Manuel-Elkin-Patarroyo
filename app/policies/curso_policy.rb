class CursoPolicy
    attr_reader :user, :curso
  
    def initialize(user, curso)
      @user = user
      @curso = curso
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
  