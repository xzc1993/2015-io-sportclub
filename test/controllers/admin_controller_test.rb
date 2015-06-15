require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get admin_panel" do
    get :admin_panel
    assert_response :success
  end

end
