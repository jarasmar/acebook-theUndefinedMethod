require 'rails_helper'

RSpec.feature 'Like comments', type: :feature do

  before(:each) do
    sign_up
    submit_post
    first_comment
  end

  scenario 'Can like their own comment and view them' do
    first(:css, ".like_comment_test").click

    expect(page).to have_content('1 Likes')
  end

  scenario 'Can unlike a previously liked comment' do
    first(:css, ".like_comment_test").click
    first(:css, ".like_comment_test").click

    expect(page).to have_content('0 Likes')
  end

  scenario "Can like someone else's comment and view them" do
    click_link 'Logout'
    sign_up_second_user
    first(:css, ".like_comment_test").click

    expect(page).to have_content('1 Likes')
  end

end
