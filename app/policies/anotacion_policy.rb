class AnotacionPolicy
    attr_reader :user, :anotacion

    def initialize(user, anotacion)
      @user = user
      @anotacion = anotacion
    end

    def index?
        @user.has_role? :admin or :docente or :estudiante
    end

    def new?
        @user.has_role? :admin or :docente 
    end
    
    def edit?
        @user.has_role? :admin or :docente
    end
    
end