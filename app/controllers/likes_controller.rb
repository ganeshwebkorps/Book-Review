class LikesController < ApplicationController
    def create
        @like = current_user.likes.new(like_params)
        if @like.save 
            redirect_to @like.likeable
        else 
            flash[:notice] = @like.errors.full_messages
        end
    end 

    def destroy
        @like = current_user.likes.find(params[:id])
        likeable = @like.likeable
        if @like.destroy
            redirect_to likeable
        end
    end

    private 
    def like_params
        params.require(:like).permit(:likeable_type, :likeable_id)
    end


end
