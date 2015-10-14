class IdeasController < ApplicationController
  respond_to :json, :html

  def index
   @ideas = Idea.order(created_at: :desc)
   @idea = Idea.new
  end

  def create
    respond_with Idea.create(idea_params), location: nil
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def update
    @idea = Idea.find(params[:id])
    if @idea.update(idea_params)
      redirect_to ideas_path
    else
      render :edit
    end
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :body, :quality)
  end
end
