class ExercisesController < ApplicationController
  def index
    posts = Post.group(:lesson)
    respond_to do |format|
      format.html
      format.json { render json: posts }
    end
  end
  
  def post
    posts = Post.where(lesson: params[:id])
    render json: posts
  end
  
  def tweet
    tweets = Tweet.where(lesson: params[:id])
    render json: tweets
  end
end
