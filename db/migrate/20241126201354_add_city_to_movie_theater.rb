class AddCityToMovieTheater < ActiveRecord::Migration[8.0]
  def change
    add_column :movie_theaters, :city, :string
  end
end
