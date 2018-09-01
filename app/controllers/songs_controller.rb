class SongsController < ApplicationController
  def index 
    @songs = Song.all
  end

  def destroy 
    Song.find(params[:id]).destroy
    redirect_to song_url
  end 

  def show 
    @song = Song.find(params[:id])
  end 

  def edit 
    @song = Song.find(params[:id])
  end
   
  def new 
    @song = Song.new
  end
   
  def update 
    @song = Song.create(params.require(:song).permit(:title,:released,:release_year,:artist_name))
    if @song.valid?
      redirect_to song_path(@song)
    else 
      render "edit"
    end   
  end
  
  def create 
    @song = Song.new(params.require(:song).permit(:title,:released,:release_year,:artist_name))
    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render "new"
    end
  end   
end 