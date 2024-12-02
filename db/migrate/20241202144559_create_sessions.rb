class CreateSessions < ActiveRecord::Migration[8.0]
  def change
    create_table :sessions do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :movie_theater, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.integer :day
      t.string :time

      t.timestamps
    end
  end
end
