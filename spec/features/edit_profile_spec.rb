# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Edit Profile', type: :feature do

  before(:each) do
    sign_up
    click_link "edit_profile"
  end

  scenario "Change your username" do
    fill_in 'Username', with: "Updated username"
    fill_in 'Current password', with: "testtest"
    click_button "Update"

    expect(page).to have_content("Hello Updated username")
  end

  scenario "Change your email" do
    fill_in 'Email', with: "new@test.com"
    fill_in 'Current password', with: "testtest"
    click_button "Update"

    expect(page).to have_text 'Your account has been updated successfully.'
  end

  scenario "Change your password" do
    fill_in 'Password', with: "testchange"
    fill_in 'Password confirmation', with: "testchange"
    fill_in 'Current password', with: "testtest"
    click_button "Update"

    expect(page).to have_text 'Your account has been updated successfully.'
  end


end
