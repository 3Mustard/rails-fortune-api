require 'json'
path = Rails.root.join('app', 'assets','cards.json')

def createCardsFromJson(path)
    cardsJson = JSON.parse(File.read(path))

    cardsJson["cards"].each do |card|
        newCard = Card.new(name: card["name"], arcana: card["arcana"], suit: card["suit"], img: card["img"], fortune_telling: card["fortune_telling"], keywords: card["keywords"], meanings: card["meanings"])
        newCard.save
    end
end 

createCardsFromJson(path)