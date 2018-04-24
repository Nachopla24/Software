class AlumnoAsignatura < ActiveRecord::Migration[5.1]
  def change
  	create_table :alumnoAsignatura do |t|
      t.references :alumnos, foreign_key: true
      t.references :asignaturas, foreign_key: true

      t.timestamps
    end
  end
end
