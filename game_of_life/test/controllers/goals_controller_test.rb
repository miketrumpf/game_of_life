require 'test_helper'

class GoalsControllerTest < ActionController::TestCase
  setup do
    @goal = goals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goal" do
    assert_difference('Goal.count') do
      post :create, goal: { aspect_goal_score: @goal.aspect_goal_score, aspect_start_score: @goal.aspect_start_score, aspect_type: @goal.aspect_type, end_date: @goal.end_date, start_date: @goal.start_date, user_id: @goal.user_id }
    end

    assert_redirected_to goal_path(assigns(:goal))
  end

  test "should show goal" do
    get :show, id: @goal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goal
    assert_response :success
  end

  test "should update goal" do
    patch :update, id: @goal, goal: { aspect_goal_score: @goal.aspect_goal_score, aspect_start_score: @goal.aspect_start_score, aspect_type: @goal.aspect_type, end_date: @goal.end_date, start_date: @goal.start_date, user_id: @goal.user_id }
    assert_redirected_to goal_path(assigns(:goal))
  end

  test "should destroy goal" do
    assert_difference('Goal.count', -1) do
      delete :destroy, id: @goal
    end

    assert_redirected_to goals_path
  end
end
