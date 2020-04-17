# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Like posts', type: :feature do
  before(:each) do
    sign_up
    submit_post
  end

  scenario 'Can like their own post and view them' do
    first(:css, '.like_post_test').click

    expect(page).to have_content('1 Likes')
  end

  scenario 'Can unlike a previously liked post' do
    first(:css, '.like_post_test').click
    first(:css, '.like_post_test').click

    expect(page).to have_content('0 Likes')
  end

  scenario "Can like someone else's post and view them" do
    click_link 'Logout'
    sign_up_second_user
    first(:css, '.like_post_test').click

    expect(page).to have_content('1 Likes')
  end
end
