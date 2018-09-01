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

  end 
  def new 

  end 
  def update 

  end
  def create 

  end   
end 