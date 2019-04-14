class CommentsController < ApplicationController

  def create
    @sexoffender = Sexoffender.find(params[:sexoffender_id])
    @comment = @sexoffender.comments.create(params[:comment].permit(:officer, :additionalinfo))

    redirect_to sexoffender_path(@sexoffender)
  end

  def destroy
    @sexoffender = Sexoffender.find(params[:sexoffender_id])
    @comment = @sexoffender.comments.find(params[:id])
    @comment.destroy

    redirect_to sexoffender_path(@sexoffender)
  end

end
