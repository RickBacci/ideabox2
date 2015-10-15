class IdeasController < ApplicationController
  respond_to :json, :html

  def index
    @idea = Idea.new
    respond_with Idea.order(:created_at), location: nil
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

  def thumbs_up
    quality = params[:idea][:quality]
    respond_with Idea.update(params[:id], quality: raise_quality(quality)), location: nil
  end

  def thumbs_down
    quality = params[:idea][:quality]
    respond_with Idea.update(params[:id], quality: lower_quality(quality)), location: nil
  end

  private

  def idea_params
    params.require(:idea).permit(:id, :title, :body, :quality)
  end

  def raise_quality(quality)
    case quality
    when 'swill'
      return 1
    when 'plausible'
      return 2
    else
      return 2
    end
  end

  def lower_quality(quality)
    case quality
    when 'genius'
      return 1
    when 'plausible'
      return 0
    else
      return 0
    end
  end
end
