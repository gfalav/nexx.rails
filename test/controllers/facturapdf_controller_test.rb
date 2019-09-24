require 'test_helper'

class FacturapdfControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get facturapdf_index_url
    assert_response :success
  end

end
