require 'test_helper'

class Usuarios::MateriasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usuarios_materias_index_url
    assert_response :success
  end

  test "should get show" do
    get usuarios_materias_show_url
    assert_response :success
  end

  test "should get edit" do
    get usuarios_materias_edit_url
    assert_response :success
  end

  test "should get new" do
    get usuarios_materias_new_url
    assert_response :success
  end

end
