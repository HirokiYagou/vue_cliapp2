class ExercisesController < ApplicationController
  def index
    posts = Post.group(:lesson)
    data = { posts: posts, current_user: current_user}
    respond_to do |format|
      format.html
      format.json { render json: data }
    end
  end

  def create
    Exercise.create(exercise_params)
  end
  
  def post
    posts = Post.where(lesson: params[:id])
    render json: posts
  end
  
  def tweet
    tweets = Tweet.where(lesson: params[:id])
    render json: tweets
  end

  private

  def exercise_params
    params.require(:exercise).permit(
      :exercise_type,
      :question_id,
      :score
    ).merge(user_id: current_user.id)
  end
end
