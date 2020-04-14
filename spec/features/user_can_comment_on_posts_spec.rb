
require 'rails_helper'

RSpec.feature 'Comment on posts', type: :feature do
  scenario 'Can comment on their own post and view them' do
    sign_up
    submit_post
    click_link "New comment"
    fill_in 'comment_comment', with: 'what a lovely comment'
    click_button 'Submit'

    expect(page).to have_content('what a lovely comment')
  end

  scenario "Can comment on someone else's post and view them" do
    sign_up
    submit_post
    click_link 'Logout'
    sign_up_second_user
    click_link "New comment"
    fill_in 'comment_comment', with: 'This is a different comment'
    click_button 'Submit'

    expect(page).to have_content('This is a different comment')
  end

end
  