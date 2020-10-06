class AnotacionPolicy
    attr_reader :user, :anotacion

    def initialize(user, anotacion)
      @user = user
      @anotacion = anotacion
    end

    def new?
        @user.has_role? :Docente
    end
    
    def edit?
        @user.has_role? :Docente
    end
    
end