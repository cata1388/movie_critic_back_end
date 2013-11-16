require 'test_helper'

class UsuarioControllerTest < ActionController::TestCase
  test "should get registro" do
    get :registro
    assert_response :success
  end

  test "should get inicio" do
    get :inicio
    assert_response :success
  end

end
