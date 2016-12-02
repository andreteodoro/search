class SeriesController < ApplicationController
  def index
    if params[:keywords].present?
      # Uses elastickick to search for the specified keywords at the fields name and description
      @series = Series.search params[:keywords], fields: [:name, :description]
    end
  end
end
