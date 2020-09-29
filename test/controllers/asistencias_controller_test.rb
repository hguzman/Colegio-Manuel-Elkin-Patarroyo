require 'test_helper'

class AsistenciasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get asistencias_index_url
    assert_response :success
  end

  test "should get show" do
    get asistencias_show_url
    assert_response :success
  end

  test "should get new" do
    get asistencias_new_url
    assert_response :success
  end

  test "should get edit" do
    get asistencias_edit_url
    assert_response :success
  end

end
