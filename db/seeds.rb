require 'json'

file = File.read('cards.json') #open file

data_hash = JSON.parse(file) #parse file

#first card is data_hash["cards"][0]

data_hash["cards"].each do |card| {
    Card.create(card)
}
