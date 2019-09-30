require 'test_helper'

class OtrocargosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @otrocargo = otrocargos(:one)
  end

  test "should get index" do
    get otrocargos_url
    assert_response :success
  end

  test "should get new" do
    get new_otrocargo_url
    assert_response :success
  end

  test "should create otrocargo" do
    assert_difference('Otrocargo.count') do
      post otrocargos_url, params: { otrocargo: { concepto_id: @otrocargo.concepto_id, ecargo_id: @otrocargo.ecargo_id, edesal_id: @otrocargo.edesal_id, ffactura: @otrocargo.ffactura, importe: @otrocargo.importe } }
    end

    assert_redirected_to otrocargo_url(Otrocargo.last)
  end

  test "should show otrocargo" do
    get otrocargo_url(@otrocargo)
    assert_response :success
  end

  test "should get edit" do
    get edit_otrocargo_url(@otrocargo)
    assert_response :success
  end

  test "should update otrocargo" do
    patch otrocargo_url(@otrocargo), params: { otrocargo: { concepto_id: @otrocargo.concepto_id, ecargo_id: @otrocargo.ecargo_id, edesal_id: @otrocargo.edesal_id, ffactura: @otrocargo.ffactura, importe: @otrocargo.importe } }
    assert_redirected_to otrocargo_url(@otrocargo)
  end

  test "should destroy otrocargo" do
    assert_difference('Otrocargo.count', -1) do
      delete otrocargo_url(@otrocargo)
    end

    assert_redirected_to otrocargos_url
  end
end
