require "test_helper"

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get step_1" do
    get step_1_url
    assert_response :success
  end
end
