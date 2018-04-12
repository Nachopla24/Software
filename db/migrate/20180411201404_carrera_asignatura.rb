class CarreraAsignatura < ActiveRecord::Migration[5.1]
  def change
  	create_table :carreraAsignatura do |t|
      t.references :carreras, foreign_key: true
      t.references :asignaturas, foreign_key: true

      t.timestamps
    end
  end
end