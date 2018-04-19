class CreateAlumnos < ActiveRecord::Migration[5.1]
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.string :email

      t.timestamps
    end
  end
end
