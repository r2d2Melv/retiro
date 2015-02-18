require 'test_helper'

class PublicoControllerTest < ActionController::TestCase
  test "should get somos" do
    get :somos
    assert_response :success
  end

  test "should get hacemos" do
    get :hacemos
    assert_response :success
  end

  test "should get comunicamos" do
    get :comunicamos
    assert_response :success
  end

end
