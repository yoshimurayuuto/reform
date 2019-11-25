class DiscussionsController < ApplicationController
  before_action :set_discussion, only: [:show, :edit, :destroy, :update]
  def index
    @discussions = Discussion.all
  end

  def new
    @discussion = Discussion.new
  end

  def create
    @discussion = Discussion.new(discussion_params)
    if @discussion.save
      redirect_to discussions_path
    else
      render :new
    end
  end

  def show
    @comments = @discussion.comments
    @comment = @discussion.comments.build
  end

  def edit;end

  def update
    if @discussion.update(discussion_params)
      redirect_to discussions_path
    else
      render :edit
    end
  end
  def destroy
    @discussion.destroy
    redirect_to discussions_path
  end

  private

  def discussion_params
    params.require(:discussion).permit(:name, :birthday, :past, :current, :future)
  end

  def set_discussion
    @discussion = Discussion.find(params[:id])
  end
end
