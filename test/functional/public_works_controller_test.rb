require 'test_helper'

class PublicWorksControllerTest < ActionController::TestCase
  setup do
    @public_work = public_works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:public_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create public_work" do
    assert_difference('PublicWork.count') do
      post :create, public_work: { annotation: @public_work.annotation, header: @public_work.header, header_coordinates: @public_work.header_coordinates, nomination: @public_work.nomination, title: @public_work.title, user_id: @public_work.user_id }
    end

    assert_redirected_to public_work_path(assigns(:public_work))
  end

  test "should show public_work" do
    get :show, id: @public_work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @public_work
    assert_response :success
  end

  test "should update public_work" do
    put :update, id: @public_work, public_work: { annotation: @public_work.annotation, header: @public_work.header, header_coordinates: @public_work.header_coordinates, nomination: @public_work.nomination, title: @public_work.title, user_id: @public_work.user_id }
    assert_redirected_to public_work_path(assigns(:public_work))
  end

  test "should destroy public_work" do
    assert_difference('PublicWork.count', -1) do
      delete :destroy, id: @public_work
    end

    assert_redirected_to public_works_path
  end
end
