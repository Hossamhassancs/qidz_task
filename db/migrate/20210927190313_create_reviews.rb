class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :movie
      t.string :user
      t.string :stars
      t.string :review

      t.timestamps
    end
  end
end
