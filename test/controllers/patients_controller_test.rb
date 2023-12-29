require "test_helper"

class PatientsControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get patients_dashboard_url
    assert_response :success
  end
end
