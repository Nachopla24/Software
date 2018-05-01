class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :alumno, foreign_key: true
      t.string :titulo
      t.string :descripcion
      t.integer :likes

      t.timestamps
    end
  end
end
