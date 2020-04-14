# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Sign up', type: :feature do

  scenario "User asked to sign up with username, email and password" do
    visit '/users/sign_up'
    expect(page).to have_field("Username")
    expect(page).to have_field("user_email")
    expect(page).to have_field("user_password")
    expect(page).to have_field("user_password_confirmation")
  end

  scenario 'You can sign up' do
    sign_up
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end

end
