class Usuario < ActiveRecord::Base
	validates_presence_of :correo, :nombre, :contrasenya, :message => "Campos requeridos"
	validates_uniqueness_of :correo, :message => "Correo ya existente"
	has_many :calificacions, dependent: :destroy
end
