class WordsController < ApplicationController
  def index
    @proverb = Word.order("created_at DESC").page(params[:page]).per(6)
  end

  def new
    @proverb = Word.new
  end

  def create
    @proverb = Word.new(spot_params)
    if @proverb.save
      redirect_to root_path
    else
      render action: :new
    end 
  end 

end
