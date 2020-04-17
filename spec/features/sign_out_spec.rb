# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Sign out', type: :feature do
  scenario 'You cannot see Log out button when you are not logged in' do
    expect(page).not_to have_link('Logout')
  end

  scenario 'You can sign out' do
    sign_up
    click_link 'Logout'
    expect(page).not_to have_content('New post')
  end
end
