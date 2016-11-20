class ContentViewsController < ApplicationController

  def create
    @content_view = ContentView.new(content_view_params)
    if @content_view.save
      format.json { render :nothing, status: 201 }
    else
      render :nothing, status: 400
    end
  end

  # no index, for admin only


  private

    def content_view_params
      params.require(:content_view).permit(:user_id, :content_url)
    end

end
