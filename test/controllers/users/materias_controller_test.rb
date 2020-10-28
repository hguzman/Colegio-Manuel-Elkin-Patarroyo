require 'test_helper'

class Users::MateriasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_materias_index_url
    assert_response :success
  end

  test "should get show" do
    get users_materias_show_url
    assert_response :success
  end

end
