require 'test_helper'

class RelacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relacion = relacions(:one)
  end

  test "should get index" do
    get relacions_url
    assert_response :success
  end

  test "should get new" do
    get new_relacion_url
    assert_response :success
  end

  test "should create relacion" do
    assert_difference('Relacion.count') do
      post relacions_url, params: { relacion: { Usuario_id: @relacion.Usuario_id, isVApellido: @relacion.isVApellido, isVCorreo: @relacion.isVCorreo, isVFechaNac: @relacion.isVFechaNac, isVNombre: @relacion.isVNombre, isVTelefono: @relacion.isVTelefono, usuario2: @relacion.usuario2 } }
    end

    assert_redirected_to relacion_url(Relacion.last)
  end

  test "should show relacion" do
    get relacion_url(@relacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_relacion_url(@relacion)
    assert_response :success
  end

  test "should update relacion" do
    patch relacion_url(@relacion), params: { relacion: { Usuario_id: @relacion.Usuario_id, isVApellido: @relacion.isVApellido, isVCorreo: @relacion.isVCorreo, isVFechaNac: @relacion.isVFechaNac, isVNombre: @relacion.isVNombre, isVTelefono: @relacion.isVTelefono, usuario2: @relacion.usuario2 } }
    assert_redirected_to relacion_url(@relacion)
  end

  test "should destroy relacion" do
    assert_difference('Relacion.count', -1) do
      delete relacion_url(@relacion)
    end

    assert_redirected_to relacions_url
  end
end
