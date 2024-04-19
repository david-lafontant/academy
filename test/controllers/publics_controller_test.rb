require "test_helper"

class PublicsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get publics_home_url
    assert_response :success
  end

  test "should get about" do
    get publics_about_url
    assert_response :success
  end

  test "should get programme" do
    get publics_programme_url
    assert_response :success
  end

  test "should get contact" do
    get publics_contact_url
    assert_response :success
  end
end
