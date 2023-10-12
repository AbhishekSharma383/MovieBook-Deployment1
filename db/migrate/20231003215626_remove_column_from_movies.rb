class RemoveColumnFromMovies < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :image, :string
  end
end
