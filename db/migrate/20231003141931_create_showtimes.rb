class CreateShowtimes < ActiveRecord::Migration[7.0]
  def change
    create_table :showtimes do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :venue, null: false, foreign_key: true
      t.datetime :showtime_at

      t.timestamps
    end
  end
end
