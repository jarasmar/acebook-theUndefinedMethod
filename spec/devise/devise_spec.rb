require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  before(:each) do
    @user = User.create{:user}
    controller.stub(:authenticate_user!).and_return(true)
    sign_in @user
  end

  it "should have a current_user" do
    expect(@user).to_not eq(nil)
  end

  it "should get index" do
    get 'index'
    response.should be_success
  end

end
