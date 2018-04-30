class AddForeignToUniversidadAndDepartamento < ActiveRecord::Migration[5.1]
  def change
	add_column :universidads, :departamento_id, :integer
    add_foreign_key :universidads, :departamentos, column: :departamento_id, primary_key: :id

    add_column :departamentos, :carreras_id, :integer
	add_foreign_key :departamentos, :carreras, column: :carreras_id, primary_key: :id
  end
end

