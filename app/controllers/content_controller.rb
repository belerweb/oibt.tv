class ContentController < ApplicationController
  def page
    @page = [params[:page].to_i, 1].max
    @pagesize = 50
    @offset = (@page - 1) * @pagesize
    @videos = Video.order("CREATED_TIME DESC").limit(@pagesize).offset(@offset)
  end

  def view
    @video = Video.find(params[:id])
  end

  def search
  end
end
