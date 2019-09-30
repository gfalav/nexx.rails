require 'test_helper'

class BonificacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bonificacion = bonificaciones(:one)
  end

  test "should get index" do
    get bonificaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_bonificacion_url
    assert_response :success
  end

  test "should create bonificacion" do
    assert_difference('Bonificacion.count') do
      post bonificaciones_url, params: { bonificacion: { edesal_id: @bonificacion.edesal_id, fdesde: @bonificacion.fdesde, fhasta: @bonificacion.fhasta, linea: @bonificacion.linea, porcentaje: @bonificacion.porcentaje } }
    end

    assert_redirected_to bonificacion_url(Bonificacion.last)
  end

  test "should show bonificacion" do
    get bonificacion_url(@bonificacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_bonificacion_url(@bonificacion)
    assert_response :success
  end

  test "should update bonificacion" do
    patch bonificacion_url(@bonificacion), params: { bonificacion: { edesal_id: @bonificacion.edesal_id, fdesde: @bonificacion.fdesde, fhasta: @bonificacion.fhasta, linea: @bonificacion.linea, porcentaje: @bonificacion.porcentaje } }
    assert_redirected_to bonificacion_url(@bonificacion)
  end

  test "should destroy bonificacion" do
    assert_difference('Bonificacion.count', -1) do
      delete bonificacion_url(@bonificacion)
    end

    assert_redirected_to bonificaciones_url
  end
end
