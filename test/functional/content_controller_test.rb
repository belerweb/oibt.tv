require 'test_helper'

class ContentControllerTest < ActionController::TestCase
  test "should get page" do
    get :page
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

end
