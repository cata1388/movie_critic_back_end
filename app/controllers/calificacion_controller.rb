class CalificacionController < ApplicationController
  def crear
  	if request.post?
  		calificacion = Calificacion.new(:usuario_id => params[:usuario_id], :pelicula_id => params[:pelicula_id], :comentario => params[:comentario], :calificacion => params[:calificacion])
  		if calificacion.save
  			render json: calificacion, root: true
  		else
  			render json: {error: "No se pudo crear la calificacion"}
  		end
  	end
  end
end
  