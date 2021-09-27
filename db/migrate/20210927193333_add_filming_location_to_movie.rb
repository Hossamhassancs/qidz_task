class AddFilmingLocationToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :filming_location, :string
  end
end
