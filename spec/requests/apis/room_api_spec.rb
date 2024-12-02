require 'rails_helper'

describe 'Room API' do 
  context 'GET /api/rooms' do
    it 'success' do 
      movie_theater = MovieTheater.create!(name: 'Cine natal', city: 'Natal')
      movie_theater.rooms.create!(name: 'sala 01', capacity: '200')
      movie_theater.rooms.create!(name: 'sala VIP', capacity: '40')
      
      get "/api/rooms?#{movie_theater.id}"

      expect(response.status).to eq 200
      expect(response.body).to have_content 'Cine natal'    
      expect(response.body).to have_content 'Natal'    
      expect(response.body).to have_content 'sala 01'    
      expect(response.body).to have_content '200'    
      expect(response.body).to have_content 'sala VIP'    
      expect(response.body).to have_content '40'    
    end
  end
end 