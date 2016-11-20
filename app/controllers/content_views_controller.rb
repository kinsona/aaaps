class ContentViewsController < ApplicationController

  def create
    @content_view = ContentView.new(content_view_params)
    if @content_view.user && @content_view.save
      render nothing: true, status: 201
    else
      render nothing: true, status: 400
    end
  end

  # no index, for admin only


  private

    def content_view_params
      params.permit(:device_id, :content_url)
    end

end
