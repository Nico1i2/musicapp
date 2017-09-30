class MusicappController < ApplicationController
  def index
    @musicapp = Playlist.all
  end

  def show
    @musicapp = Playlist.find(params[:id])
  end

  def new
    @musicapp = Playlist.new()
  end

  def create
      @musicapp = Playlist.new(musicapp_params)
      @musicapp.user = current_user
      if @musicapp.save
        redirect_to musicapp_path(@musicapp)
      else
        render 'new'
      end
    end

  private

  def musicapp_params
    params.require(:playlist).permit(:playlist_name)
  end


end
