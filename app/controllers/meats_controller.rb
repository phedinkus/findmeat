class MeatsController < ApplicationController
  def index
    if params[:q]
     query = params[:q]
     @search = Meat.search do
       keywords query
     end
     @meats = @search.results
    else
      @meats = Meat.all
    end
  end
end