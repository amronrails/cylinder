require 'test_helper'

class SoonControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
