class AddFieldsToUniversity < ActiveRecord::Migration[5.1]
  def change
    add_column :universities, :direccion, :string
    add_index :universities, :direccion
    add_column :universities, :phone_number, :integer
    add_index :universities, :phone_number
  end
end
