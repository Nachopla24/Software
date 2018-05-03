class AddForeignToCarrera < ActiveRecord::Migration[5.1]
  def change
  	add_column :carreras, :universidad_id, :integer
    add_foreign_key :carreras, :universidads, column: :universidad_id, primary_key: :id
  end
end
