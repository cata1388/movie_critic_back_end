class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :correo
      t.string :contrasenya

      t.timestamps
    end
  end
end
