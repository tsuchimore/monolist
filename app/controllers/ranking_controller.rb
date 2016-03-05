class RankingController < ApplicationController
    def have
      @items = Item.group(:haves)
    end
    
    def want 
      @items = Item.group(:wants)
    end        
end
