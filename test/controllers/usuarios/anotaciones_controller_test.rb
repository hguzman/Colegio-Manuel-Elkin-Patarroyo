require 'test_helper'

class Usuarios::AnotacionesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usuarios_anotaciones_index_url
    assert_response :success
  end

  test "should get show" do
    get usuarios_anotaciones_show_url
    assert_response :success
  end

  test "should get new" do
    get usuarios_anotaciones_new_url
    assert_response :success
  end

  test "should get edit" do
    get usuarios_anotaciones_edit_url
    assert_response :success
  end

end
