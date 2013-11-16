class CreateCalificacions < ActiveRecord::Migration
  def change
    create_table :calificacions do |t|
      t.belongs_to :usuario
      t.belongs_to :pelicula	
      t.integer :usuario_id
      t.integer :pelicula_id
      t.text :comentario
      t.float :calificacion

      t.timestamps
    end
  end
end
