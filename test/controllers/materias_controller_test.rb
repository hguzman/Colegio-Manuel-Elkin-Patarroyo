require 'test_helper'

class MateriasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get materias_index_url
    assert_response :success
  end

  test "should get show" do
    get materias_show_url
    assert_response :success
  end

  test "should get new" do
    get materias_new_url
    assert_response :success
  end

  test "should get edit" do
    get materias_edit_url
    assert_response :success
  end

end
