require 'rails_helper'

describe 'Add room to movie theater' do
  it 'success' do
    movie_theater = FactoryBot.create(:movie_theater, name: 'Cine Paradiso')
    user = FactoryBot.create(:user, email: 'joao@email.com', password: '123456789')
    login_as user

    visit root_path
    within('nav') do
      click_on 'Cinemas'
    end
    click_on 'Cine Paradiso'
    click_on 'Adicionar Sala'
    fill_in 'Nome', with: 'Sala 01'
    fill_in 'Capacidade', with: 200
    click_on 'Criar Sala'

    expect(page).to have_css 'h1', text: 'Cine Paradiso'
    expect(page).to have_content 'Sala 01'
    expect(page).to have_content 'Capacidade: 200', normalize_ws: true
    expect(page).to have_content 'Sala adicionada com sucesso.'
  end

  it 'and fields ara mandatory' do
    movie_theater = FactoryBot.create(:movie_theater, name: 'Cine Paradiso')
    user = FactoryBot.create(:user, email: 'joao@email.com', password: '123456789')
    login_as user

    visit root_path
    within('nav') do
      click_on 'Cinemas'
    end
    click_on 'Cine Paradiso'
    click_on 'Adicionar Sala'
    fill_in 'Nome', with: ''
    fill_in 'Capacidade', with: ''
    click_on 'Criar Sala'

    expect(page).to have_content 'Sala não foi adicionada.'
  end
end
