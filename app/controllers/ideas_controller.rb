class IdeasController < ApplicationController
  respond_to :json, :html

  def index
    @idea = Idea.new
    respond_with Idea.order(created_at: :desc), location: nil
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

  def destroy
    respond_with Idea.find(params[:id]).delete
    head :no_content
  end

  private

  def idea_params
    params.require(:idea).permit(:id, :title, :body, :quality)
  end
end
