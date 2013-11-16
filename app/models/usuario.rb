class Usuario < ActiveRecord::Base
	has_many :calificacions, dependent: :destroy
end
