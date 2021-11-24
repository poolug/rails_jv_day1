class PagesController < ApplicationController
  def index
    @wines = Wine.includes(:wines_strains)
  end
end
