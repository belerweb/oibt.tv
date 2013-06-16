class ContentController < ApplicationController
  def page
    @page = [params[:page].to_i, 1].max
    @pagesize = 50
    @videos = Video.order("CREATED_TIME DESC").paginate(:page => @page, :per_page => @pagesize)
  end

  def view
    @video = Video.find(params[:id])
  end

  def search
    @page = [params[:page].to_i, 1].max
    @pagesize = 50
    @keyword = params[:keyword];
    @videos = Video.where("NAME LIKE ?", "%" << @keyword << "%").order("CREATED_TIME DESC").paginate(:page => @page, :per_page => @pagesize)
    render(:action => :page)
  end

  def tag
    @page = [params[:page].to_i, 1].max
    @pagesize = 50
    @tag = params[:tag];
    @videos = Video.where("TAG LIKE ?", "%" << @tag << "%").order("CREATED_TIME DESC").paginate(:page => @page, :per_page => @pagesize)
    render(:action => :page)
  end
end
