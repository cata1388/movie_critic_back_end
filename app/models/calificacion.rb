class Calificacion < ActiveRecord::Base
	validates_presence_of :usuario_id, :pelicula_id, :calificacion, :message => "Campos requeridos"
	belongs_to :usuario
	belongs_to :peliula
end
