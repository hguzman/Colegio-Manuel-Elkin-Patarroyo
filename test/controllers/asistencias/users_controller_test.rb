require 'test_helper'

class Asistencias::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get asistencias_users_index_url
    assert_response :success
  end

end
