class CalificacionController < ApplicationController
  def crear
  	if request.post?
  		calificacion = Calificacion.new(:usuario_id => params[:usuario_id], :pelicula_id => params[:pelicula_id], :comentario => params[:comentario], :calificacion => params[:calificacion])
  		if calificacion.save{
				peliculas = Pelicula.where(:pelicula_id => params[:pelicula_id])
				promedio = 0
				cont = 0
				peliculas.each do |x, y|
					if(peliculas[x] == "calificacion")
						promedio += peliculas[y]
						cont += cont
				end
				promedio = promedio/cont
  			render json: promedio, root: true
			}
  		else
  			render json: {error: "No se pudo crear la calificacion"}
  		end
  	end
  end
end
  
