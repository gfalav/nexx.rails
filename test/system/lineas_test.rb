require "application_system_test_case"

class LineasTest < ApplicationSystemTestCase
  setup do
    @linea = lineas(:one)
  end

  test "visiting the index" do
    visit lineas_url
    assert_selector "h1", text: "Lineas"
  end

  test "creating a Linea" do
    visit lineas_url
    click_on "New Linea"

    fill_in "Concepto", with: @linea.concepto_id
    fill_in "Factura", with: @linea.factura_id
    fill_in "Importe", with: @linea.importe
    fill_in "Leyenda", with: @linea.leyenda
    click_on "Create Linea"

    assert_text "Linea was successfully created"
    click_on "Back"
  end

  test "updating a Linea" do
    visit lineas_url
    click_on "Edit", match: :first

    fill_in "Concepto", with: @linea.concepto_id
    fill_in "Factura", with: @linea.factura_id
    fill_in "Importe", with: @linea.importe
    fill_in "Leyenda", with: @linea.leyenda
    click_on "Update Linea"

    assert_text "Linea was successfully updated"
    click_on "Back"
  end

  test "destroying a Linea" do
    visit lineas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Linea was successfully destroyed"
  end
end
