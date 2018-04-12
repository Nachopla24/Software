class CreateCarreraAsignaturas < ActiveRecord::Migration[5.1]
  def change
    create_table :carrera_asignaturas do |t|

      t.timestamps
    end
  end
end
