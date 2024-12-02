require 'rails_helper'

describe 'Room API' do 
  context 'GET /api/rooms' do
    it 'success' do 
      movie_theater = MovieTheater.create!(name: 'Cine natal', city: 'Natal')
      movie_theater.rooms.create!(name: 'sala 01', capacity: '200')
      movie_theater.rooms.create!(name: 'sala VIP', capacity: '40')
      
      get "/api/rooms?movie_theater=#{movie_theater.id}"

      expect(response.status).to eq 200
      expect(response.content_type).to include 'application/json'  
      expect(response.body).to include 'Cine natal'    
      expect(response.body).to include 'Natal'    
      expect(response.body).to include 'sala 01'    
      expect(response.body).to include '200'    
      expect(response.body).to include 'sala VIP'    
      expect(response.body).to include '40'    
    end

    # it 'movie theater does not exist' do 
    #   get "/api/rooms"

    #   expect(response.status).not_to eq 200
    #   expect(response.status).to eq 404
    #   expect(response.body).to include 'Cinema não encontrado'      
    # end
  end
end 