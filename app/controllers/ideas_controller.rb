class IdeasController < ApplicationController
  def index
    @ideas = Idea.order(created_at: :desc)
  end

  def create
    @idea = Idea.new(idea_params)

    if @idea.save
      # flash.now[:success] = "Idea added!"
      redirect_to ideas_path
    else
      # flash.now[:danger] = "Idea cannot be added!"
      render ideas_path
    end
  end


  private

  def idea_params
    params.permit(:title, :body, :quality)
  end
end
