class ContentController < ApplicationController
  def page
    @page = [params[:page].to_i, 1].max
    @pagesize = 50
    @videos = Video.order("CREATED_TIME DESC").paginate(:page=>@page, :per_page=>@pagesize)
  end

  def view
    @video = Video.find(params[:id])
  end

  def search
  end
end
