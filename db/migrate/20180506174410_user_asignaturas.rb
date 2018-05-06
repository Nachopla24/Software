class UserAsignaturas < ActiveRecord::Migration[5.1]
  def change
  	create_table :userAsignatura do |t|
      t.references :users, foreign_key: true
      t.references :asignaturas, foreign_key: true

      t.timestamps
  	end
  end
end
