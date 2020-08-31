require 'test_helper'

class RolesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get roles_index_url
    assert_response :success
  end

  test "should get show" do
    get roles_show_url
    assert_response :success
  end

  test "should get new" do
    get roles_new_url
    assert_response :success
  end

  test "should get edit" do
    get roles_edit_url
    assert_response :success
  end

end
