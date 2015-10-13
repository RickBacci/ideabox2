class IdeasController < ApplicationController
  respond_to :json, :html

  def index
   @ideas = Idea.order(created_at: :desc)
  end

  def create
    respond_with Idea.create(idea_params), location: nil
  end


  private

  def idea_params
    params.require(:idea).permit(:title, :body, :quality)
  end
end
