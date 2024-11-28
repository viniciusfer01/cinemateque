User.create!(email: 'joao@email.com', password: '123456789')
User.create!(email: 'andre@email.com', password: '123456789')
movie_theater = FactoryBot.create(:movie_theater, name: 'Cine Paradiso')
movie_theater.rooms.create(name: 'Sala 01', capacity: 100)
movie_theater.rooms.create(name: 'Sala 02', capacity: 130)
Movie.create!(title: 'Jurassic Park', year: 1993, director: 'Steven Spielberg', 
              plot:  'Os paleontólogos Alan Grant, Ellie Sattler e o matemático Ian Malcolm fazem parte de um seleto grupo escolhido para visitar uma ilha habitada por dinossauros criados a partir de DNA pré-histórico. O idealizador do projeto e bilionário John Hammond garante a todos que a instalação é completamente segura. Mas após uma queda de energia, os visitantes descobrem, aos poucos, que vários predadores ferozes estão soltos e à caça.')
