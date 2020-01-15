require 'json'
path = Rails.root.join('app', 'assets','cards.json')

def createCardsFromJson(path)
    cardsJson = JSON.parse(File.read(path))

    cardsJson["cards"].each do |card|
        newCard = Card.create(name: card["name"], 
            arcana: card["arcana"], 
            suit: card["suit"], 
            img: card["img"], 
            fortune_telling: card["fortune_telling"], 
            keywords: card["keywords"], 
            meaning_face_up: card["meanings"]["light"],
            meaning_face_down: card["meanings"]["shadow"],
            questions_to_ask: card["Questions to Ask"])
    end
end 

createCardsFromJson(path)