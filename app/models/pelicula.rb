class Pelicula < ActiveRecord::Base
	has_many :calificacions, dependent: :destroy
end
