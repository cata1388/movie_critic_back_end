class CalificacionController < ApplicationController
 def crear
 	if request.post?
 	 calificacion = Calificacion.new(:usuario_id => params[:usuario_id], :pelicula_id => params[:pelicula_id], :comentario => params[:comentario], :calificacion => params[:calificacion])

 	 if calificacion.save
 	 peliculas = Calificacion.where(:pelicula_id => params[:pelicula_id])
 	 promedio = 0

peliculas.each do |pelicula|
 	 promedio += pelicula.calificacion
 	 end
 	 promedio = promedio/peliculas.count
 	 pelicula = Pelicula.find(params[:pelicula_id])	
 	 pelicula.calificacion = promedio
 	 Pelicula.update(pelicula.id,:nombre=>pelicula.nombre, :tipo=>pelicula.tipo, :calificacion=>promedio, :anyo=>pelicula.anyo, :resumen=>pelicula.resumen, :director=>pelicula.director, :foto=>pelicula.foto)

	 render json: pelicula, root: true
 	 else
 	 render json: {error: "No se pudo crear la calificacion"}
 	 end
 	end
end
end


