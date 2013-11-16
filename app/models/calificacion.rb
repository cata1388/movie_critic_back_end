class Calificacion < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :peliula
end
