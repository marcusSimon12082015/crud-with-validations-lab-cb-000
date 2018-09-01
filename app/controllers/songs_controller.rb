class SongsController < ApplicationController
  def index 
    @songs = Song.all
  end

  def destroy 

  end 

  def show 
    @song = Song.find(params[:id])
  end 

  def edit 
    @song = Song.find(params[:id])
  end 
  def new 

  end 
  def update 

  end
  def create 
    @song = Song.new(params.require(:song).permit(:title,:released,:release_year,:artist_name))
    @song.save
    redirect_to song_path(@song)
  end   
end 