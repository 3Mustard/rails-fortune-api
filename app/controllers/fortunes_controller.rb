class FortunesController < ApplicationController

    def index 
        fortunes = Fortune.all 

        render json: fortunes 
    end 

    def show
        fortune = Fortune.find_by(id: params[:id])

        render json: fortune
    end 
    
    def create
        fortune = Fortune.new()
        params["card_ids"].each do |id|
            fortune.card_id.push(id)
        end
        fortune.save()  
        
        render json: fortune 
    end 
     
    def destroy 
        fortune = Fortune.find_by(id: params[:id])
        fortune.destroy
        render json: fortune 
    end 
end