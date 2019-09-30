require 'test_helper'

class SuministrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suministro = suministros(:one)
  end

  test "should get index" do
    get suministros_url
    assert_response :success
  end

  test "should get new" do
    get new_suministro_url
    assert_response :success
  end

  test "should create suministro" do
    assert_difference('Suministro.count') do
      post suministros_url, params: { suministro: { direccion_id: @suministro.direccion_id, edesal_id: @suministro.edesal_id, nombre: @suministro.nombre, tconexion_id: @suministro.tconexion_id, tfase_id: @suministro.tfase_id, tmedicion_id: @suministro.tmedicion_id, ttension_id: @suministro.ttension_id } }
    end

    assert_redirected_to suministro_url(Suministro.last)
  end

  test "should show suministro" do
    get suministro_url(@suministro)
    assert_response :success
  end

  test "should get edit" do
    get edit_suministro_url(@suministro)
    assert_response :success
  end

  test "should update suministro" do
    patch suministro_url(@suministro), params: { suministro: { direccion_id: @suministro.direccion_id, edesal_id: @suministro.edesal_id, nombre: @suministro.nombre, tconexion_id: @suministro.tconexion_id, tfase_id: @suministro.tfase_id, tmedicion_id: @suministro.tmedicion_id, ttension_id: @suministro.ttension_id } }
    assert_redirected_to suministro_url(@suministro)
  end

  test "should destroy suministro" do
    assert_difference('Suministro.count', -1) do
      delete suministro_url(@suministro)
    end

    assert_redirected_to suministros_url
  end
end
