class Movie < ActiveRecord::Base
    def self.all_ratings
       select(:rating).map(&:rating).uniq#collection of movie ratings
    end

    def self.with_ratings(ratings) 
        Movie.where(rating:ratings) #filter and remember by the rating and the sorted column respectively
    end
end

