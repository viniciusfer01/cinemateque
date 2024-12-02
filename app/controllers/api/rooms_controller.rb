class Api::RoomsController < ActionController::API 
  def index
    movie_theater = MovieTheater.find_by(params[:movie_theater_id]) 

    if movie_theater
      return render status: 200, json: {name: movie_theater.name, city: movie_theater.city, rooms: movie_theater.rooms}
    end
    # render 404, json: {error: 'Cinema não encontrado'}
  end  
end