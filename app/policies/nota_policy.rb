class NotaPolicy
    attr_reader :user, :nota

    def initialize(user, nota)
      @user = user
      @nota = nota
    end

    def index?
      @user.has_role? :admin or :docente
    end

    def new?
      @user.has_role? :admin or :docente
    end

    def show?
      @user.has_role? :admin or :docente or :estudiante
    end
    

    def edit?
      @user.has_role? :admin
    end
    
end