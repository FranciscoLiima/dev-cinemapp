class CreateFavoriteMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_movies do |t|
      t.string :title
      t.string :date

      t.timestamps
    end
  end
end
