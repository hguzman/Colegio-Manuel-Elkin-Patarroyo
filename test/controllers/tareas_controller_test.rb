require 'test_helper'

class TareasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tareas_index_url
    assert_response :success
  end

  test "should get new" do
    get tareas_new_url
    assert_response :success
  end

  test "should get show" do
    get tareas_show_url
    assert_response :success
  end

  test "should get edit" do
    get tareas_edit_url
    assert_response :success
  end

end
