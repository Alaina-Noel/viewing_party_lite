require 'rails_helper'

RSpec.describe 'application welcome page', type: :feature do
  describe 'As a user' do
    describe 'When I visit the root path/welcome page' do

      it 'I can see the application title, a button to create a new user, & a link to go back to the landing page' do

        visit root_path
        expect(page).to have_content('Viewing Party Lite')
        expect(page).to have_button('New User')
        expect(page).to have_link('Home')

        click_on('Home')
        expect(current_path).to eq(root_path)
      end

      it 'I can see a list of existing users' do
        user1 = create(:user)
        user2 = create(:user)
        user3 = create(:user)
        user4 = create(:user)

        visit root_path
        within('#all_users') do
          expect(page).to have_content("#{user1.email}")
          expect(page).to have_content("#{user2.email}")
          expect(page).to have_content("#{user3.email}")
          expect(page).to have_content("#{user4.email}")
        end
      end

      it 'The New User button should lead to the registration page' do
        visit root_path

        click_on('New User')
        expect(current_path).to eq('/register')
      end
    end
  end
end