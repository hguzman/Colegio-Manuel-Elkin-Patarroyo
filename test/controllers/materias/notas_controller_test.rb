require 'test_helper'

class Materias::NotasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get materias_notas_index_url
    assert_response :success
  end

  test "should get new" do
    get materias_notas_new_url
    assert_response :success
  end

end
