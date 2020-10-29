require 'test_helper'

class Users::NotasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_notas_index_url
    assert_response :success
  end

  test "should get show" do
    get users_notas_show_url
    assert_response :success
  end

  test "should get new" do
    get users_notas_new_url
    assert_response :success
  end

  test "should get edit" do
    get users_notas_edit_url
    assert_response :success
  end

end
