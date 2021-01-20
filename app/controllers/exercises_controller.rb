class ExercisesController < ApplicationController
  def index
  end
  
  def post
    posts = Post.all
    respond_to do |format|
      format.html
      format.json { render json: posts }
    end
  end
  
  def tweet
    tweets = Tweet.all
    respond_to do |format|
      format.html
      format.json { render json: tweets }
    end
  end
end
