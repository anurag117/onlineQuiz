require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get admin" do
    get :admin
    assert_response :success
  end

  test "should get playquiz" do
    get :playquiz
    assert_response :success
  end

end
