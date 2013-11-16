require 'test_helper'

class CalificacionControllerTest < ActionController::TestCase
  test "should get crear" do
    get :crear
    assert_response :success
  end

end
