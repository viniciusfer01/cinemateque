class CreateRooms < ActiveRecord::Migration[8.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.references :movie_theater, null: false, foreign_key: true
      t.integer :capacity

      t.timestamps
    end
  end
end
