class Api::V1::CommentsController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
    @comments = Comment.all
    # byebug
    render json: @comments
  end

  def create

    @comment = Comment.create(comment_params)
    # byebug
    if @comment.valid?

      render json: { comment: CommentSerializer.new(@comment) }, status: :created
    else
      render json: { error: 'failed to create comment' }, status: :not_acceptable
    end
  end

private
  def comment_params
    params.require(:comment).permit( :comment, :user_id, :recipient_id)
  end
end
