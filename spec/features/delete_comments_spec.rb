# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Delete comments', type: :feature do

  before(:each) do
    sign_up
    submit_post
  end

  scenario "Can delete your own comments" do
    first_comment
    click_link "Delete comment"

    expect(page).not_to have_content('First comment')
  end

  scenario "Cannot delete someone else's comment" do
    first_comment
    click_link 'Logout'
    sign_up_second_user
    visit '/posts'
    click_button "Delete Comment"

    expect(page).to have_content('First comment')
  end

end
