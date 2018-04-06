class CreateUniversidads < ActiveRecord::Migration[5.1]
  def change
    create_table :universidads do |t|
      t.string :nombre
      t.string :direccion
      t.integer :numDireccion
      t.string :descripcion

      t.timestamps
    end
  end
end
