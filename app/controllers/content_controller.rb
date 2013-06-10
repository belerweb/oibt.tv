class ContentController < ApplicationController
  def page
    p params[:page]
  end

  def view
    p params[:id]
  end

  def search
    p params[:keyword]
  end
end
