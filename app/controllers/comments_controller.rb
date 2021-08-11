class CommentsController < ApplicationController
    def index
        comments = Comment.all.order('id')
        render json: comments
      end
    
      def create
        comment = Comment.create(comment_params)
        render json: comment
      end
    
      def update
        comment = Comment.find_by(id: params[:id])
        comment.update(comment_params)
        render json: comment
      end
    
      def destroy
        comment = Comment.find_by(id: params[:id])
        comment.destroy
        render json: { message: 'comment deleted' }
      end
    
      private
    
      def comment_params
        params.require(:comment).permit(:content, :user_id, :anime_id)
      end
end
