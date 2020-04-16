# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Edit comments', type: :feature do

  before(:each) do
    sign_up
    submit_post
    first_comment
  end

  scenario "Can edit your own comment", js: true do
    first(:css, ".edit-comment-btn").click

    expect(page).to have_button("Save Changes")
  end

  scenario "Cannot edit someone else's comment" do
    click_link 'Logout'
    sign_up_second_user
    click_button "Edit comment"

    expect(page).not_to have_button("Save Changes")
  end

  scenario "user cannot edit a comment after 10 minutes" do
    Timecop.freeze(Time.now + 15.minutes) do
      first(:css, ".edit-comment-btn").click
      expect(page).not_to have_link "Save Changes"
    end
  end


end