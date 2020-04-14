# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Edit posts', type: :feature do

  # scenario "user can update an existing post" do
  #   sign_up
  #   submit_post
  #   click_link "Edit"
  #   fill_in "edit_message", with: 'First message, plus edit'
  #   click_link "save changes"
  #   expect(page).to have_content "First message, plus edit"
  # end

  scenario "user cannot update someone else's post" do
    sign_up
    submit_post
    click_link 'Logout'
    sign_up_second_user
    click_link "Edit"
    expect(page).not_to have_content "First message"
  end


end