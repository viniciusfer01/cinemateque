require 'rails_helper'

describe 'User sees sessions' do 
  it 'succesfully' do 
    movie_theater = FactoryBot.create(:movie_theater, name: 'Cine Natal')
    user = FactoryBot.create(:user, email: 'joao@email.com', password: '123456789')
    movie_theater.rooms.create!(name: 'sala 01', capacity: '200')
    movie_theater.rooms.create!(name: 'sala VIP', capacity: '40')

    login_as user 
    visit root_path 
    within('nav') do
      click_on 'Cinemas'
    end
    click_on 'Cine Natal'
    click_on 'Adicionar Sessão'
    fill_in 'Nome', with: 'Sala 01'
    fill_in 'Capacidade', with: 200
    click_on 'Criar Sessão'

    expect(page).to have_content 'Sessões do cinema: Cine Natal'  
    expect(page).to have_content '0'
    expect(page).to have_content 'Duro de Matar'
    expect(page).to have_content '18 horas'
    expect(page).to have_content '1'
    expect(page).to have_content 'John Wick'
    expect(page).to have_content '16 horas'
  end
end