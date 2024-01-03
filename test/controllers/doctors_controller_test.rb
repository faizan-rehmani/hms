require "test_helper"

class DoctorsControllerTest < ActionDispatch::IntegrationTest
  test "should get availability" do
    get doctors_availability_url
    assert_response :success
  end
end
