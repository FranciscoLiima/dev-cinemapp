class AddTitleDateToFavoritemovies < ActiveRecord::Migration[5.0]
  def change
    add_column :favoritemovies, :title, :string
    add_column :favoritemovies, :date, :string
  end
end
