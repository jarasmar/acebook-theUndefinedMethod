def sign_in
  visit '/users/sign_in'
  fill_in 'user_email', with: 'test@test.com'
  fill_in 'user_password', with: 'testtest'
  click_button 'Log in'
end

def sign_up
  visit '/users/sign_up'
  fill_in 'Username', with: "John Doe"
  fill_in 'user_email', with: 'test@test.com'
  fill_in 'user_password', with: 'testtest'
  fill_in 'user_password_confirmation', with: 'testtest'
  click_button 'Sign up'
end

def submit_post
  click_link 'New post'
  fill_in 'post_message', with: 'First message'
  click_button 'Submit'
end

def submit_post_2
  click_link 'New post'
  fill_in 'post_message', with: 'Second message'
  click_button 'Submit'
end

def sign_up_second_user
  visit '/users/sign_up'
  fill_in 'Username', with: "Jane Doe"
  fill_in 'user_email', with: 'test2@test.com'
  fill_in 'user_password', with: 'testtest'
  fill_in 'user_password_confirmation', with: 'testtest'
  click_button 'Sign up'
end