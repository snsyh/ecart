class SearchController < ApplicationController
  def index
    @items = Item.front_search
  end
end
