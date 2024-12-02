class SessionsController < ApplicationController 
  def index
    @movie_theater = MovieTheater.find(params[:movie_theater_id])
    @sessions = Session.all
  end

  def new 
    @session = Session.new 
  end

  def create
    @session = Session.new 
  end
end