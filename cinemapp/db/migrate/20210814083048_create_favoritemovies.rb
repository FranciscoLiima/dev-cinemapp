class CreateFavoritemovies < ActiveRecord::Migration[5.0]
  def change
    create_table :favoritemovies do |t|

      t.timestamps
    end
  end
end
