class PostsController < ApplicationController
  def create
  end

  private

  def post_params
    params.require(:post).permit(:text, :answer, :lesson)
  end
end
