require 'test_helper'

class FacturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @factura = facturas(:one)
  end

  test "should get index" do
    get facturas_url
    assert_response :success
  end

  test "should get new" do
    get new_factura_url
    assert_response :success
  end

  test "should create factura" do
    assert_difference('Factura.count') do
      post facturas_url, params: { factura: { contrato_id: @factura.contrato_id, fdesde: @factura.fdesde, femision: @factura.femision, fhasta: @factura.fhasta, fproxvcto: @factura.fproxvcto, fupb: @factura.fupb, fvcto: @factura.fvcto, nro: @factura.nro, periodo: @factura.periodo } }
    end

    assert_redirected_to factura_url(Factura.last)
  end

  test "should show factura" do
    get factura_url(@factura)
    assert_response :success
  end

  test "should get edit" do
    get edit_factura_url(@factura)
    assert_response :success
  end

  test "should update factura" do
    patch factura_url(@factura), params: { factura: { contrato_id: @factura.contrato_id, fdesde: @factura.fdesde, femision: @factura.femision, fhasta: @factura.fhasta, fproxvcto: @factura.fproxvcto, fupb: @factura.fupb, fvcto: @factura.fvcto, nro: @factura.nro, periodo: @factura.periodo } }
    assert_redirected_to factura_url(@factura)
  end

  test "should destroy factura" do
    assert_difference('Factura.count', -1) do
      delete factura_url(@factura)
    end

    assert_redirected_to facturas_url
  end
end
