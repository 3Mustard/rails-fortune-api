class Fortune < ApplicationRecord
    has_many :notes
    has_many_ :cards 
end
