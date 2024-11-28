require 'rails_helper'

describe 'Usuário registra cinema' do
  it 'com sucesso' do
    user = FactoryBot.create(:user, email: 'joao@email.com', password: '123456789')
    login_as user

    visit root_path
    within('nav') do
      click_on 'Cinemas'
    end
    click_on 'Adicionar Cinema'
    fill_in 'Nome', with: 'Cine Independência'
    fill_in 'Cidade', with: 'Juiz de Fora/MG'
    click_on 'Criar Cinema'

    expect(page).to have_css 'h1', text: 'Cine Independência'
    expect(page).to have_content 'Cidade: Juiz de Fora/MG', normalize_ws: true
    expect(page).to have_content 'Cinema adicionado com sucesso.'
    expect(page).to have_link 'Adicionar Sala'
  end

  it 'e nome é obrigatório' do
    user = FactoryBot.create(:user, email: 'joao@email.com', password: '123456789')
    login_as user

    visit root_path
    within('nav') do
      click_on 'Cinemas'
    end
    click_on 'Adicionar Cinema'
    fill_in 'Nome', with: ''
    click_on 'Criar Cinema'

    expect(page).to have_content 'Cinema não foi adicionado.'
  end
end
