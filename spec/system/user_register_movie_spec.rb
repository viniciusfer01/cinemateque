require 'rails_helper'

describe 'Usuário cadastra um filme' do
  it 'com sucesso' do
    user = FactoryBot.create(:user, email: 'joao@email.com')
    login_as user

    visit root_path
    within('nav') do
      click_on 'Filmes'
    end
    click_on 'Adicionar Filme'
    fill_in 'Nome', with: 'Jurassic Park'
    fill_in 'Ano', with: '1993'
    fill_in 'Direção', with: 'Steven Spielberg'
    fill_in 'Enredo', with: 'Os paleontólogos Alan Grant, Ellie Sattler e o matemático Ian Malcolm fazem parte de um seleto grupo escolhido para visitar uma ilha habitada por dinossauros criados a partir de DNA pré-histórico. O idealizador do projeto e bilionário John Hammond garante a todos que a instalação é completamente segura. Mas após uma queda de energia, os visitantes descobrem, aos poucos, que vários predadores ferozes estão soltos e à caça.'
    click_on 'Criar Filme'

    expect(page).to have_content 'Filme adicionado com sucesso.'
    expect(current_path).to eq movies_path
  end

  it 'campos obrigatórios' do
    user = FactoryBot.create(:user, email: 'joao@email.com')
    login_as user

    visit root_path
    within('nav') do
      click_on 'Filmes'
    end
    click_on 'Adicionar Filme'
    fill_in 'Nome', with: ''
    fill_in 'Ano', with: ''
    fill_in 'Direção', with: ''
    fill_in 'Enredo', with: ''
    click_on 'Criar Filme'

    expect(page).to have_content 'Filme não foi adicionado.'
  end
end
