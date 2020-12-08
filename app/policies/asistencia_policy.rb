class AsistenciaPolicy
    attr_reader :user, :asistencia

    def initialize(user, asistencia)
      @user = user
      @asistencia = asistencia
    end

    def index?
      @user.has_role? :admin or :docente
    end

    def new?
      @user.has_role? :admin or :docente
    end

    def show?
      @user.has_role? :admin or :docente
    end
    

    def edit?
      @user.has_role? :admin or :docente
    end
    
end