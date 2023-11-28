require "test_helper"

class SquadsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get squads_show_url
    assert_response :success
  end
end
