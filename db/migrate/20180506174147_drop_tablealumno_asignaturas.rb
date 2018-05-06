class DropTablealumnoAsignaturas < ActiveRecord::Migration[5.1]
  def change
 	  	drop_table :alumnoAsignatura
  end
end
