class FortunesController < ApplicationController

    #see all fortune data
    def index 
        fortunes = Fortune.all 

        render json: fortunes 
    end 
    #create a new fortune
    def create 
        fortune = Fortune.new
        #fortune.drawThree()
        #fortune.save
        #render json: fortune
    end 
    #destroy a saved fortune 
    def destroy 
        fortune = Fortune.find_by(id: params[:id])
        fortune.destroy
        render json: fortune 
    end 
end
pokemon = Pokemon.find_by(id: params[:id])
        pokemon.destroy
        render json: pokemon