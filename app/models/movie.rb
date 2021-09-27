class Movie < ApplicationRecord
    has_many :reviews , dependent: :destroy

    def self.search(search)
      if search
        Movie.where(["actor LIKE ?", "%#{params[:search]}%"])
      else 
        Movie.all
      end
    end
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
          to_hash = row.to_hash
          Movie.create! row.to_hash
        end
    end

end
