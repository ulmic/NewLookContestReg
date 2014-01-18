require 'test_helper'

class PublicWorksControllerTest < ActionController::TestCase
  setup do
    @public_work = create :public_work
    @user = create :user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:public_works)
  end

  test "should get new" do
    get :new, id: @user
    assert_response :success
  end

  test "should create public_work" do
    attributes = attributes_for :public_work
    post :create, public_work: attributes, id: @user
  end

  test "should show public_work" do
    get :show, id: @public_work
    assert_response :success
  end

  test "should destroy public_work" do
    assert_difference('PublicWork.count', -1) do
      delete :destroy, id: @public_work
    end

    assert_redirected_to public_works_path
  end
end
