require 'rails_helper'

describe 'User sign in' do
  it 'successfully' do
    FactoryBot.create(:user, email: 'joao@email.com', password: '123456789')
    visit root_path
    within('nav') do
      click_on 'Entrar'
    end

    within('form') do
      fill_in 'E-mail', with: 'joao@email.com'
      fill_in 'Senha', with: '123456789'
      click_on 'Entrar'
    end
    expect(page).to have_content 'Login efetuado com sucesso'
  end

  it 'and sign out' do
    user = FactoryBot.create(:user, email: 'joao@email.com', password: '123456789')
    login_as user

    visit root_path
    within('nav') do
      click_on 'Sair'
    end

    expect(page).to have_content 'Logout efetuado com sucesso'
  end
end
