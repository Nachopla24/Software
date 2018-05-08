class DropTableDepartamentos < ActiveRecord::Migration[5.1]
  def change
  	remove_column :universidads, :departamento_id, :integer
  	drop_table :departamentos

  end
end
