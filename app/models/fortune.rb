class Fortune < ApplicationRecord
    has_many :notes
    has_many :cards 
end
