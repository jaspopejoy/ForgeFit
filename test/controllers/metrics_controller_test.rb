require "test_helper"

class MetricsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get metrics_new_url
    assert_response :success
  end

  test "should get create" do
    get metrics_create_url
    assert_response :success
  end

  test "should get show" do
    get metrics_show_url
    assert_response :success
  end
end
