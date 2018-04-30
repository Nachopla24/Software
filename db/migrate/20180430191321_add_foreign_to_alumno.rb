class AddForeignToAlumno < ActiveRecord::Migration[5.1]
  def change
  	add_column :alumnos, :post_id, :integer
    add_foreign_key :alumnos, :posts, column: :post_id, primary_key: :id
  end
end
