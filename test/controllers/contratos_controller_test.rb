require 'test_helper'

class ContratosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contrato = contratos(:one)
  end

  test "should get index" do
    get contratos_url
    assert_response :success
  end

  test "should get new" do
    get new_contrato_url
    assert_response :success
  end

  test "should create contrato" do
    assert_difference('Contrato.count') do
      post contratos_url, params: { contrato: { cuenta_id: @contrato.cuenta_id, econtrato_id: @contrato.econtrato_id, fcontratoact: @contrato.fcontratoact, nombre: @contrato.nombre, tcuit_id: @contrato.tcuit_id, tiibb_id: @contrato.tiibb_id, tperfact_id: @contrato.tperfact_id } }
    end

    assert_redirected_to contrato_url(Contrato.last)
  end

  test "should show contrato" do
    get contrato_url(@contrato)
    assert_response :success
  end

  test "should get edit" do
    get edit_contrato_url(@contrato)
    assert_response :success
  end

  test "should update contrato" do
    patch contrato_url(@contrato), params: { contrato: { cuenta_id: @contrato.cuenta_id, econtrato_id: @contrato.econtrato_id, fcontratoact: @contrato.fcontratoact, nombre: @contrato.nombre, tcuit_id: @contrato.tcuit_id, tiibb_id: @contrato.tiibb_id, tperfact_id: @contrato.tperfact_id } }
    assert_redirected_to contrato_url(@contrato)
  end

  test "should destroy contrato" do
    assert_difference('Contrato.count', -1) do
      delete contrato_url(@contrato)
    end

    assert_redirected_to contratos_url
  end
end
