json.array!(@peliculas) do |pelicula|
  json.extract! pelicula, :nombre, :tipo, :calificacion, :anyo, :resumen, :director, :foto
  json.url pelicula_url(pelicula, format: :json)
end
