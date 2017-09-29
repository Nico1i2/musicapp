class MusicappController < ApplicationController
  def index
    @musicapp = Musicapp.all
  end

  def show
    @musicapp = Musicapp.find(params[:id])
  end

  def new
    @musicapp = Musicapp.new()
  end
end
