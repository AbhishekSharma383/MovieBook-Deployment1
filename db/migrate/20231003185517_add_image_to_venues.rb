class AddImageToVenues < ActiveRecord::Migration[7.0]
  def change
    add_column :venues, :image, :string
  end
end
