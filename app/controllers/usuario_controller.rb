class UsuarioController < ApplicationController
  def registro
  	if request.post?
  		usuario = Usuario.new(:nombre => params[:nombre], :correo => params[:correo], :contrasenya => params[:contrasenya])
  		if usuario.save
  			render json: usuario, root: true
  		else
  			render json: {error: "Error creando usuario"}
  		end
  	end
  end

  def inicio
  	if request.post?
  		usuario = Usuario.where(:correo => params[:correo])
  		if usuario =! [] and usuario.contrasenya == params[:contrasenya]
  			render json: usuario, root: true
  		else 
  			render json: {error: "Usuario o Password incorrecto"}
  		end
  	end
  end
end
