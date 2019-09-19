require 'test_helper'

class EnumeradosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enumerado = enumerados(:one)
  end

  test "should get index" do
    get enumerados_url
    assert_response :success
  end

  test "should get new" do
    get new_enumerado_url
    assert_response :success
  end

  test "should create enumerado" do
    assert_difference('Enumerado.count') do
      post enumerados_url, params: { enumerado: { codigo: @enumerado.codigo, descripcion: @enumerado.descripcion, detalle: @enumerado.detalle, radical: @enumerado.radical } }
    end

    assert_redirected_to enumerado_url(Enumerado.last)
  end

  test "should show enumerado" do
    get enumerado_url(@enumerado)
    assert_response :success
  end

  test "should get edit" do
    get edit_enumerado_url(@enumerado)
    assert_response :success
  end

  test "should update enumerado" do
    patch enumerado_url(@enumerado), params: { enumerado: { codigo: @enumerado.codigo, descripcion: @enumerado.descripcion, detalle: @enumerado.detalle, radical: @enumerado.radical } }
    assert_redirected_to enumerado_url(@enumerado)
  end

  test "should destroy enumerado" do
    assert_difference('Enumerado.count', -1) do
      delete enumerado_url(@enumerado)
    end

    assert_redirected_to enumerados_url
  end
end
