require 'test_helper'

class Materias::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get materias_users_index_url
    assert_response :success
  end

end
