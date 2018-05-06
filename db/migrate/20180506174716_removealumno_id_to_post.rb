class RemovealumnoIdToPost < ActiveRecord::Migration[5.1]
  def change
  	 remove_column :posts, :alumno_id, :integer
  end
end
