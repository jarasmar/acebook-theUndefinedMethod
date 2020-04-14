# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Submit posts', type: :feature do
  scenario 'Can submit posts and view them' do
    sign_up
    submit_post
    expect(page).to have_content('First message')
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
