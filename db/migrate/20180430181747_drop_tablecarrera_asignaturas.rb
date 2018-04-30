class DropTablecarreraAsignaturas < ActiveRecord::Migration[5.1]
  def change
  	drop_table :carrera_asignaturas
  end
end
