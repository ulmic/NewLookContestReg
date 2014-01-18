require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = create :user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { birth_date: @user.birth_date, building: @user.building, city: @user.city, district: @user.district, email: @user.email, first_name: @user.first_name, flat: @user.flat, group: @user.group, home_phone: @user.home_phone, house: @user.house, icq: @user.icq, job: @user.job, last_name: @user.last_name, middle_name: @user.middle_name, mobile_phone: @user.mobile_phone, role: @user.role, school: @user.school, street: @user.street, twitter: @user.twitter, vkontakte: @user.vkontakte }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { birth_date: @user.birth_date, building: @user.building, city: @user.city, district: @user.district, email: @user.email, first_name: @user.first_name, flat: @user.flat, group: @user.group, home_phone: @user.home_phone, house: @user.house, icq: @user.icq, job: @user.job, last_name: @user.last_name, middle_name: @user.middle_name, mobile_phone: @user.mobile_phone, role: @user.role, school: @user.school, street: @user.street, twitter: @user.twitter, vkontakte: @user.vkontakte }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
