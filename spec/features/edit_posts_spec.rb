# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Edit posts', type: :feature do
  scenario 'user can update an existing post' do
    sign_up
    submit_post
    click_link 'Edit'
    expect(page).to have_button 'Save Changes'
  end

  scenario 'Can edit their own post' do
    sign_up
    submit_post
    click_link 'Edit'
    fill_in 'post[message]', with: 'updated post'
    click_button('Save Changes')

    expect(page).to have_content('updated post')
  end

  scenario "user cannot update someone else's post" do
    sign_up
    submit_post
    click_link 'Logout'
    sign_up_second_user
    click_button 'Edit'
    expect(page).not_to have_link 'Save Changes'
  end

  scenario 'user cannot update a post after 10 minutes' do
    sign_up
    submit_post
    Timecop.freeze(Time.now + 15.minutes) do
      click_link 'Edit'
      expect(page).not_to have_link 'Save Changes'
    end
  end
end
