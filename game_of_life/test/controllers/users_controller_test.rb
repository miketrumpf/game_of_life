require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
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
      post :create, user: { education_score: @user.education_score, family_score: @user.family_score, health_score: @user.health_score, overall_score: @user.overall_score, password_digest: @user.password_digest, romantic_score: @user.romantic_score, screen_name: @user.screen_name, social_score: @user.social_score, spirit_score: @user.spirit_score, wealth_score: @user.wealth_score }
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
    patch :update, id: @user, user: { education_score: @user.education_score, family_score: @user.family_score, health_score: @user.health_score, overall_score: @user.overall_score, password_digest: @user.password_digest, romantic_score: @user.romantic_score, screen_name: @user.screen_name, social_score: @user.social_score, spirit_score: @user.spirit_score, wealth_score: @user.wealth_score }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
