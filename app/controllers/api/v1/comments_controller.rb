module Api
  module V1
    class CommentsController < ApplicationController
      before_action :set_post

      def index
        @comments = @post.comments.includes(:user)
        render json: @comments, include: :user
      end

      def create
        @comment = @post.comments.new(comment_params)
        if @comment.save
          render json: @comment, status: :created
        else
          render json: { errors: @comment.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        head :no_content
      end

      private

      def set_post
        @post = Post.find(params[:post_id])
      end

      def comment_params
        params.require(:comment).permit(:content, :user_id)
      end
    end
  end
end