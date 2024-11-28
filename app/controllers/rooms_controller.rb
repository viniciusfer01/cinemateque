class RoomsController < ApplicationController
  def new
    @movie_theater = MovieTheater.find(params[:movie_theater_id])
    @room = @movie_theater.rooms.build
  end

  def create
    @movie_theater = MovieTheater.find(params[:movie_theater_id])
    @room = @movie_theater.rooms.build(rooms_params)
    if @room.save
      redirect_to @movie_theater, notice: t('.success')
    else
      flash.now[:alert] = t('.failure')
      render :new, status: :unprocessable_entity
    end
  end

  private

  def rooms_params
    params.require(:room).permit(:name, :capacity)
  end
end
