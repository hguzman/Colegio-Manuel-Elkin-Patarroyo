require 'test_helper'

class Anotaciones::ComentariosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get anotaciones_comentarios_index_url
    assert_response :success
  end

  test "should get show" do
    get anotaciones_comentarios_show_url
    assert_response :success
  end

  test "should get new" do
    get anotaciones_comentarios_new_url
    assert_response :success
  end

  test "should get edit" do
    get anotaciones_comentarios_edit_url
    assert_response :success
  end

end
