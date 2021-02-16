class WordsController < ApplicationController
  def index
    @spots = Spot.order("created_at DESC").page(params[:page]).per(6)
  end
end
