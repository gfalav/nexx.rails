require "application_system_test_case"

class FacturasTest < ApplicationSystemTestCase
  setup do
    @factura = facturas(:one)
  end

  test "visiting the index" do
    visit facturas_url
    assert_selector "h1", text: "Facturas"
  end

  test "creating a Factura" do
    visit facturas_url
    click_on "New Factura"

    fill_in "Contrato", with: @factura.contrato_id
    fill_in "Fdesde", with: @factura.fdesde
    fill_in "Femision", with: @factura.femision
    fill_in "Fhasta", with: @factura.fhasta
    fill_in "Fproxvcto", with: @factura.fproxvcto
    fill_in "Fupb", with: @factura.fupb
    fill_in "Fvcto", with: @factura.fvcto
    fill_in "Nro", with: @factura.nro
    fill_in "Periodo", with: @factura.periodo
    click_on "Create Factura"

    assert_text "Factura was successfully created"
    click_on "Back"
  end

  test "updating a Factura" do
    visit facturas_url
    click_on "Edit", match: :first

    fill_in "Contrato", with: @factura.contrato_id
    fill_in "Fdesde", with: @factura.fdesde
    fill_in "Femision", with: @factura.femision
    fill_in "Fhasta", with: @factura.fhasta
    fill_in "Fproxvcto", with: @factura.fproxvcto
    fill_in "Fupb", with: @factura.fupb
    fill_in "Fvcto", with: @factura.fvcto
    fill_in "Nro", with: @factura.nro
    fill_in "Periodo", with: @factura.periodo
    click_on "Update Factura"

    assert_text "Factura was successfully updated"
    click_on "Back"
  end

  test "destroying a Factura" do
    visit facturas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Factura was successfully destroyed"
  end
end
