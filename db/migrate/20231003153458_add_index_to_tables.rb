class AddIndexToTables < ActiveRecord::Migration[7.0]
  def change
    add_index :movies, :title
    add_index :movies, :genre
    add_index :venues, :name
    # add_index :showtimes, :movie_id
    # add_index :showtimes, :venue_id
    add_index :showtimes, :showtime_at
  end
end
