# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Delete posts', type: :feature do

  scenario "user can delete their own post" do
    sign_up
    submit_post
    click_link "Delete"
    expect(page).not_to have_content "First message"
  end

  scenario "user cannot delete someone else's post" do
    sign_up
    submit_post
    click_link 'Logout'
    sign_up_second_user
    click_button "Delete"
    expect(page).to have_content "First message"
  end

end
