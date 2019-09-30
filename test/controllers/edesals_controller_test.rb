require 'test_helper'

class EdesalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @edesal = edesals(:one)
  end

  test "should get index" do
    get edesals_url
    assert_response :success
  end

  test "should get new" do
    get new_edesal_url
    assert_response :success
  end

  test "should create edesal" do
    assert_difference('Edesal.count') do
      post edesals_url, params: { edesal: { contrato_id: @edesal.contrato_id, csmofijo: @edesal.csmofijo, eservicio: @edesal.eservicio, fdetectbadcosfi: @edesal.fdetectbadcosfi, fpotoriginal: @edesal.fpotoriginal, fpotvigente: @edesal.fpotvigente, potoriginal: @edesal.potoriginal, potvigente: @edesal.potvigente, tarifa_id: @edesal.tarifa_id } }
    end

    assert_redirected_to edesal_url(Edesal.last)
  end

  test "should show edesal" do
    get edesal_url(@edesal)
    assert_response :success
  end

  test "should get edit" do
    get edit_edesal_url(@edesal)
    assert_response :success
  end

  test "should update edesal" do
    patch edesal_url(@edesal), params: { edesal: { contrato_id: @edesal.contrato_id, csmofijo: @edesal.csmofijo, eservicio: @edesal.eservicio, fdetectbadcosfi: @edesal.fdetectbadcosfi, fpotoriginal: @edesal.fpotoriginal, fpotvigente: @edesal.fpotvigente, potoriginal: @edesal.potoriginal, potvigente: @edesal.potvigente, tarifa_id: @edesal.tarifa_id } }
    assert_redirected_to edesal_url(@edesal)
  end

  test "should destroy edesal" do
    assert_difference('Edesal.count', -1) do
      delete edesal_url(@edesal)
    end

    assert_redirected_to edesals_url
  end
end
