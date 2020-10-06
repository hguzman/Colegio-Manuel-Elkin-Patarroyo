class NoticiaPolicy
    attr_reader :user, :noticia

    def initialize(user, noticia)
      @user = user
      @noticia = noticia
    end

    def index?
        @user.has_role? :admin or :Docente
    end

    def show?
        @user.has_role? :admin or :Docente
    end

    def new?
        @user.has_role? :admin
    end

    def edit?
        @user.has_role? :admin
    end
    
    def destroy?
        @user.has_role? :admin
    end
end