require 'rails_helper'

describe 'User sees sessions' do 
  it 'succesfully' do 
    movie_theater = FactoryBot.create(:movie_theater, name: 'Cine Natal')
    user = FactoryBot.create(:user, email: 'joao@email.com', password: '123456789')
    movie = Movie.create!(
      title: 'Jurassic Park',
      year:  '1993',
      director:  'Steven Spielberg',
      plot:  'Os paleontólogos Alan Grant, Ellie Sattler e o matemático Ian Malcolm fazem parte de um seleto grupo escolhido para visitar uma ilha habitada por dinossauros criados a partir de DNA pré-histórico. O idealizador do projeto e bilionário John Hammond garante a todos que a instalação é completamente segura. Mas após uma queda de energia, os visitantes descobrem, aos poucos, que vários predadores ferozes estão soltos e à caça.'
    )
    movie2 = Movie.create!(
      title: 'Jurassic Park 2',
      year:  '1995',
      director:  'Steven Spielberg',
      plot:  'Novamente, os paleontólogos Alan Grant, Ellie Sattler e o matemático Ian Malcolm fazem parte de um seleto grupo escolhido para visitar uma ilha habitada por dinossauros criados a partir de DNA pré-histórico. O idealizador do projeto e bilionário John Hammond garante a todos que a instalação é completamente segura. Mas após uma queda de energia, os visitantes descobrem, aos poucos, que vários predadores ferozes estão soltos e à caça.'
    )
    room = movie_theater.rooms.create!(name: 'sala 01', capacity: '200')
    movie_theater.rooms.create!(name: 'sala VIP', capacity: '40')
    movie_theater.sessions.create!(movie: movie, room: room, day: 0, time: "18:00")
    movie_theater.sessions.create!(movie: movie2, room: room, day: 0, time: "16:00")

    login_as user 
    visit root_path
    within('nav') do
      click_on 'Cinemas'
    end
    click_on 'Cine Natal'
    click_on 'Exibir Sessões'
    
    expect(page).to have_content 'Sessões do cinema: Cine Natal'  
    expect(page).to have_content '0'
    expect(page).to have_content 'Jurassic Park'
    expect(page).to have_content '18:00'
    expect(page).to have_content '1'
    expect(page).to have_content 'Jurassic Park 2'
    expect(page).to have_content '16:00'
  end
end