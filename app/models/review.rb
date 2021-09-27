class Review < ApplicationRecord
    belong_to :movies
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
          to_hash = row.to_hash
          Movie.create! row.to_hash
    end

    def self.sort_by_rate
       Review.order(stars: :desc)
    end

end
