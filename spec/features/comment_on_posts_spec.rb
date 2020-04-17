
require 'rails_helper'

RSpec.feature 'Comment on posts', type: :feature do
  scenario 'Can comment on their own post and view them' do
    sign_up
    submit_post
    click_link "Comment"
    fill_in 'comment_comment', with: 'what a lovely comment'
    click_button 'Submit'

    expect(page).to have_content('what a lovely comment')
  end

  scenario "Can comment on someone else's post and view them" do
    sign_up
    submit_post
    #below is to find the css of the logout icon and click on it.
    Capybara.page.find(".bi.bi-box-arrow-in-right").click
    #below doesnt work because logout is now an icon
    #click_link 'Logout'
    #find(:css, 'i.bi.bi-box-arrow-in-right').click
    sign_up_second_user
    click_link "New comment"
    fill_in 'comment_comment', with: 'This is a different comment'
    click_button 'Submit'

    expect(page).to have_content('This is a different comment')
  end

  scenario "Can see newest comments first" do
    sign_up
    submit_post
    click_link "Comment"
    fill_in 'comment_comment', with: 'First comment'
    click_button 'Submit'
    click_link "Comment"
    fill_in 'comment_comment', with: 'Second comment'
    click_button 'Submit'
    expect("Second comment").to appear_before("First comment")
  end

end
  