require 'test_helper'

class CorreosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @correo = correos(:one)
  end

  test "should get index" do
    get correos_url
    assert_response :success
  end

  test "should get new" do
    get new_correo_url
    assert_response :success
  end

  test "should create correo" do
    assert_difference('Correo.count') do
      post correos_url, params: { correo: { Usuario_id: @correo.Usuario_id, correo: @correo.correo } }
    end

    assert_redirected_to correo_url(Correo.last)
  end

  test "should show correo" do
    get correo_url(@correo)
    assert_response :success
  end

  test "should get edit" do
    get edit_correo_url(@correo)
    assert_response :success
  end

  test "should update correo" do
    patch correo_url(@correo), params: { correo: { Usuario_id: @correo.Usuario_id, correo: @correo.correo } }
    assert_redirected_to correo_url(@correo)
  end

  test "should destroy correo" do
    assert_difference('Correo.count', -1) do
      delete correo_url(@correo)
    end

    assert_redirected_to correos_url
  end
end
