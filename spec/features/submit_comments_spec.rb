# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Comment on posts', type: :feature do
  before(:each) do
    sign_up
    submit_post
  end

  scenario 'Can comment on their own post and view them' do
    first_comment

    expect(page).to have_content('First comment')
  end

  scenario "Can comment on someone else's post and view them" do
    click_link 'Logout'
    sign_up_second_user
    second_comment

    expect(page).to have_content('Second comment')
  end

  scenario 'Can see newest comments first' do
    first_comment
    second_comment

    expect('Second comment').to appear_before('First comment')
  end

  scenario 'Can see how long ago someone posted their comment' do
    first_comment

    expect(page).to have_content('less than a minute ago')
  end
end
