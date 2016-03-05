class RankingController < ApplicationController
    def have
      @item_counts = Have.group(:item_id).order('count_item_id desc').limit(10).count('item_id').keys
      @items = Item.find(@item_counts).sort_by {|itemc| @item_counts.index(itemc.id)}
    end
    
    def want
      @item_counts = Want.group(:item_id).order('count_item_id desc').limit(10).count('item_id').keys
      @items = Item.find(@item_counts).sort_by {|itemc| @item_counts.index(itemc.id)}
    end

end