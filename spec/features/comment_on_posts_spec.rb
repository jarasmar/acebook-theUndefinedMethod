
require 'rails_helper'

RSpec.feature 'Comment on posts', type: :feature do
  scenario 'Can comment on their own post and view them' do
    sign_up
    submit_post
    first_comment

    expect(page).to have_content('First comment')
  end

  scenario "Can comment on someone else's post and view them" do
    sign_up
    submit_post
    click_link 'Logout'
    sign_up_second_user
    second_comment

    expect(page).to have_content('Second comment')
  end

  scenario "Can see newest comments first" do
    sign_up
    submit_post
    first_comment
    second_comment

    expect("Second comment").to appear_before("First comment")
  end

  scenario "Can delete your own comments" do
    sign_up
    submit_post
    first_comment
    click_link "Delete comment"

    expect(page).not_to have_content('First comment')
  end

  scenario "Cannot delete someone else's comment" do
    sign_up
    submit_post
    first_comment
    click_link 'Logout'
    sign_up_second_user
    visit '/posts'
    click_button "delete comment"

    expect(page).to have_content('First comment')
  end

end
  