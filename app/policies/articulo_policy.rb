class ArticuloPolicy

   attr_reader :user, :articulo

  def initialize(user, articulo)
    @user = user
    @articulo = articulo
  end

  def index?
    @user.has_role? :admin
  end
end
