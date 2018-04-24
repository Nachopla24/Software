class CreateAlumnoAsignaturas < ActiveRecord::Migration[5.1]
  def change
    create_table :alumno_asignaturas do |t|

      t.timestamps
    end
  end
end
