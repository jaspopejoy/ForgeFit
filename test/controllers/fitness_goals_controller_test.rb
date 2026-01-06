require "test_helper"

class FitnessGoalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fitness_goals_index_url
    assert_response :success
  end

  test "should get show" do
    get fitness_goals_show_url
    assert_response :success
  end

  test "should get new" do
    get fitness_goals_new_url
    assert_response :success
  end

  test "should get create" do
    get fitness_goals_create_url
    assert_response :success
  end
end
