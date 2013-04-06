class LinksController < ApplicationController
  def new
    @link=Link.new
  end
  def index
    @links=Link.all
  end
  def create
    @link=Link.new(params[:link])
    if @link.save
      redirect_to '/links'
    else
      render :new
    end
  end
  def destroy
    @link=Link.find(params[:id])
    @link.destroy
    redirect_to links_path
  end
  def edit
    @link=Link.find(params[:id])
  end
  def update
    @change=Link.find(params[:id])
    @change.update_attributes(params[:link])
    redirect_to '/links'
  end
  def like
    respond_to '/links'
  end
  def dislike
    respond_to '/links'
  end

  private

  def get_vote
    current_item = @item.detect{|r| r.id == params[:id].to_i}
    @vote = current_item.votes.find_by_user_id(current_user.id)
    unless @vote
      @vote = Vote.create(:user_id => current_user.id, :value => 0)
      current_item.votes << @vote
    end
  end
end