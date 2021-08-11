class WatchLaterListsController < ApplicationController
    def index
        watch_later_lists = WatchLaterList.all.order('id')
        render json: watch_later_lists
      end
    
      def create
        watch_later_list = Watch_later_list.create(watch_later_list_params)
        render json: watch_later_list
      end
    
      def update
        watch_later_list = Watch_later_list.find_by(id: params[:id])
        watch_later_list.update(watch_later_list_params)
        render json: watch_later_list
      end
    
      def destroy
        watch_later_list = Watch_later_list.find_by(id: params[:id])
        watch_later_list.destroy
        render json: { message: 'anime deleted from watch later list' }
      end
    
      private
    
      def watch_later_list_params
        params.require(:watch_later_list).permit(:user_id, :anime_id)
      end
end
