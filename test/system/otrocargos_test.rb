require "application_system_test_case"

class OtrocargosTest < ApplicationSystemTestCase
  setup do
    @otrocargo = otrocargos(:one)
  end

  test "visiting the index" do
    visit otrocargos_url
    assert_selector "h1", text: "Otrocargos"
  end

  test "creating a Otrocargo" do
    visit otrocargos_url
    click_on "New Otrocargo"

    fill_in "Concepto", with: @otrocargo.concepto_id
    fill_in "Ecargo", with: @otrocargo.ecargo_id
    fill_in "Edesal", with: @otrocargo.edesal_id
    fill_in "Ffactura", with: @otrocargo.ffactura
    fill_in "Importe", with: @otrocargo.importe
    click_on "Create Otrocargo"

    assert_text "Otrocargo was successfully created"
    click_on "Back"
  end

  test "updating a Otrocargo" do
    visit otrocargos_url
    click_on "Edit", match: :first

    fill_in "Concepto", with: @otrocargo.concepto_id
    fill_in "Ecargo", with: @otrocargo.ecargo_id
    fill_in "Edesal", with: @otrocargo.edesal_id
    fill_in "Ffactura", with: @otrocargo.ffactura
    fill_in "Importe", with: @otrocargo.importe
    click_on "Update Otrocargo"

    assert_text "Otrocargo was successfully updated"
    click_on "Back"
  end

  test "destroying a Otrocargo" do
    visit otrocargos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Otrocargo was successfully destroyed"
  end
end
