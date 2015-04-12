require 'test_helper'

class Admin::Informat::ParticipantsControllerTest < ActionController::TestCase
  setup do
    @participant = create :participant
    @admin = create :admin
    admin_sign_in @admin
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create participant" do
    attributes = attributes_for :participant
    post :create, participant: attributes
    assert_response :redirect

    participant = Informat::Participant.last
    assert_equal attributes[:first_name], participant.first_name
  end

  test "should not create participant" do
    attributes = { email: @participant.email }

    post :create, participant: attributes
    assert_response :success
  end

  test "should show participant" do
    get :show, id: @participant
    assert_response :success
  end

  test "should get edit by admin" do
    get :edit, id: @participant
    assert_response :success
  end

  test "should update participant by admin" do
    attributes = attributes_for :participant
    put :update, id: @participant, participant: attributes
    assert_response :redirect

    @participant.reload
    assert_equal attributes[:first_name], @participant.first_name
  end

  test "should not update participant with render edit" do
    attributes = attributes_for :participant
    attributes[:first_name] = nil
    put :update, id: @participant, participant: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy participant" do
    delete :destroy, id: @participant
    @participant.reload
    assert @participant.busted?
    assert_redirected_to participants_path
  end
end
