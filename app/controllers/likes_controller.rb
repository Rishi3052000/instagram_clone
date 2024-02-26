

class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @like = current_user.likes.new(like_params)

    if @like.save
      flash[:notice] = "Post liked successfully."
    else
      flash[:alert] = "You already liked this post."
    end

    redirect_to root_path
  end

  
  
  def destroy
    @like = current_user.likes.find(params[:id])
    @like.destroy

    redirect_to root_path
  end

  def like_params
    params.require(:like).permit(:post_id)
  end
end
