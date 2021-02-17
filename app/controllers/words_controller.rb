class WordsController < ApplicationController
  def index
    @proverbs = Word.order("created_at DESC").page(params[:page]).per(6)
    @proverb = Word.new
  end

  def create
    @proverb = Word.new(proverb_params)
    if @proverb.save
      redirect_to root_path
    else
      render action: :new
    end 
  end 

  def edit 
    @proverb = Word.find(params[:id])
  end 

  def update
    @proverb = Word.find(params[:id])
    if @proverb.update(proverb_params)
      redirect_to root_path
    else
      render action: :edit
    end 
  end 

  def destroy
    @proverb = Word.find(params[:id])
    @proverb.destroy
    redirect_to root_path
  end 

  private
  def proverb_params
    params.require(:word).permit(:proverb, :owner).merge(user_id: current_user.id)
  end
end

end
