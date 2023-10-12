class CreateSeats < ActiveRecord::Migration[7.0]
  def change
    create_table :seats do |t|
      t.string :row
      t.integer :number
      t.string :status

      t.timestamps
    end
  end
end
