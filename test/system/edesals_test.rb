require "application_system_test_case"

class EdesalsTest < ApplicationSystemTestCase
  setup do
    @edesal = edesals(:one)
  end

  test "visiting the index" do
    visit edesals_url
    assert_selector "h1", text: "Edesals"
  end

  test "creating a Edesal" do
    visit edesals_url
    click_on "New Edesal"

    fill_in "Contrato", with: @edesal.contrato_id
    fill_in "Csmofijo", with: @edesal.csmofijo
    fill_in "Eservicio", with: @edesal.eservicio
    fill_in "Fdetectbadcosfi", with: @edesal.fdetectbadcosfi
    fill_in "Fpotoriginal", with: @edesal.fpotoriginal
    fill_in "Fpotvigente", with: @edesal.fpotvigente
    fill_in "Potoriginal", with: @edesal.potoriginal
    fill_in "Potvigente", with: @edesal.potvigente
    fill_in "Tarifa", with: @edesal.tarifa_id
    click_on "Create Edesal"

    assert_text "Edesal was successfully created"
    click_on "Back"
  end

  test "updating a Edesal" do
    visit edesals_url
    click_on "Edit", match: :first

    fill_in "Contrato", with: @edesal.contrato_id
    fill_in "Csmofijo", with: @edesal.csmofijo
    fill_in "Eservicio", with: @edesal.eservicio
    fill_in "Fdetectbadcosfi", with: @edesal.fdetectbadcosfi
    fill_in "Fpotoriginal", with: @edesal.fpotoriginal
    fill_in "Fpotvigente", with: @edesal.fpotvigente
    fill_in "Potoriginal", with: @edesal.potoriginal
    fill_in "Potvigente", with: @edesal.potvigente
    fill_in "Tarifa", with: @edesal.tarifa_id
    click_on "Update Edesal"

    assert_text "Edesal was successfully updated"
    click_on "Back"
  end

  test "destroying a Edesal" do
    visit edesals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Edesal was successfully destroyed"
  end
end
