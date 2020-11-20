class UserMailer < ApplicationMailer
    def anotacion_mailer(user, anotacion)
        @user = user
        @anotacion = anotacion
        mail(to: @user.email, subject: 'Anotación registrada')
    end

    def bienvenida_mailer(user)
      @user = User.last
      mail(to: @user.email, subject: 'Bienvenido(a) a NEOPA')
    end

    def noticia_mailer(user, noticia)
      @user = user
      @noticia = noticia
      mail(to: @user.email, subject: 'Nuevo evento')
    end
    
end
