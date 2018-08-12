require 'test_helper'

class ReaccionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reaccion = reaccions(:one)
  end

  test "should get index" do
    get reaccions_url
    assert_response :success
  end

  test "should get new" do
    get new_reaccion_url
    assert_response :success
  end

  test "should create reaccion" do
    assert_difference('Reaccion.count') do
      post reaccions_url, params: { reaccion: { Entrada_id: @reaccion.Entrada_id, Usuario_id: @reaccion.Usuario_id } }
    end

    assert_redirected_to reaccion_url(Reaccion.last)
  end

  test "should show reaccion" do
    get reaccion_url(@reaccion)
    assert_response :success
  end

  test "should get edit" do
    get edit_reaccion_url(@reaccion)
    assert_response :success
  end

  test "should update reaccion" do
    patch reaccion_url(@reaccion), params: { reaccion: { Entrada_id: @reaccion.Entrada_id, Usuario_id: @reaccion.Usuario_id } }
    assert_redirected_to reaccion_url(@reaccion)
  end

  test "should destroy reaccion" do
    assert_difference('Reaccion.count', -1) do
      delete reaccion_url(@reaccion)
    end

    assert_redirected_to reaccions_url
  end
end
