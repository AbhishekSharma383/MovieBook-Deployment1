class RemoveImageFromVenues < ActiveRecord::Migration[7.0]
  def change
    remove_column :venues, :image, :string
  end
end
