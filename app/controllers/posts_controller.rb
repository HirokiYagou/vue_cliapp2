class PostsController < ApplicationController
  def create
    Post.create(post_params)
  end

  private

  def post_params
    params.require(:post).permit(:text, :answer, :lesson)
  end
end
