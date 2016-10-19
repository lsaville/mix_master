class PlaylistsController < ApplicationController
  def index
  end

  def new
    @playlist = Playlist.new
    @songs    = Song.all
  end
end
