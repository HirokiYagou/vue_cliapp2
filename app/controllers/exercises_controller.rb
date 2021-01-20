class ExercisesController < ApplicationController
  def index
    posts = Tweet.all
    respond_to do |format|
      format.html
      format.json { render json: posts }
    end
  end

  def post
  end

  def tweet
  end
end
