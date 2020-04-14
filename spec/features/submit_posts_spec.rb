# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Submit posts', type: :feature do
  scenario 'Can submit posts and view them' do
    sign_up
    submit_post
    expect(page).to have_content('First message')
  end

  scenario "Can submit post with multiple breaks" do
    sign_up
    click_link 'New post'
    fill_in 'post_message', with: 'First message\nSecond Line'
    click_button 'Submit'
    expect(page).to have_content("First message\\nSecond Line")
  end

  scenario "Can see newest posts first" do
    sign_up
    submit_post
    click_link 'Logout'
    sign_up_second_user
    submit_post_2
    expect("Second message").to appear_before("First message")
  end

  scenario "Can see the date and time of posts" do
    sign_up
    submit_post
    post_date = Post.first.created_at.strftime('%H:%M, %d/%m/%Y')
    expect(page).to have_content(post_date)
  end
end
