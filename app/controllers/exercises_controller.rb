class ExercisesController < ApplicationController
  def index
    posts = Post.group(:lesson)
    user_id = current_user.id
    data = { posts: posts, user_id: user_id}
    respond_to do |format|
      format.html
      format.json { render json: data }
    end
  end

  def create
    
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
