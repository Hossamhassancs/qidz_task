class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :description
      t.integer :year
      t.string :director
      t.string :film_location
      t.string :country
      t.string :actor



      t.timestamps
    end
  end
end
