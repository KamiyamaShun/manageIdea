class IdeasController < ApplicationController
  def index
    @ideas = Idea.includes(:category)
    render json: @ideas , serializer: IdeaSerializer
  end

  def create
    @idea = Idea.new(new_params)
    if @idea.save
      render json: @idea, status: :created, location: @idea
    else
      render json: @idea.errors, status: :unprocessable_entity
    end
  end

  private

  def new_params
    params.require(:idea).permit(:body)
  end
end
