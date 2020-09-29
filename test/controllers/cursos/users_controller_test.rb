require 'test_helper'

class Cursos::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cursos_users_index_url
    assert_response :success
  end

end
