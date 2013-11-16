class CreatePeliculas < ActiveRecord::Migration
  def change
    create_table :peliculas do |t|
      t.string :nombre
      t.string :tipo
      t.float :calificacion
      t.integer :anyo
      t.text :resumen
      t.string :director
      t.string :foto

      t.timestamps
    end
  end
end
