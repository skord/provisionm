require 'test_helper'

class HelpControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get usage" do
    get :usage
    assert_response :success
  end

end
