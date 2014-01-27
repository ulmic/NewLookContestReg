require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = create :user
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    attributes = attributes_for :user
    assert_difference('User.count') do
    post :create, user: attributes
    end

    assert_redirected_to user_path assigns :user
  end

  test "should show user" do
    user_sign_in @user
    get :show, id: @user
    assert_response :success
  end

end
