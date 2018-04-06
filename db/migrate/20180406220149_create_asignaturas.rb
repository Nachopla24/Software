class CreateAsignaturas < ActiveRecord::Migration[5.1]
  def change
    create_table :asignaturas do |t|
      t.string :nombre
      t.string :descripcion
      t.string :codigo

      t.timestamps
    end
  end
end
