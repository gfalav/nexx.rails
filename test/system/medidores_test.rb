require "application_system_test_case"

class MedidoresTest < ApplicationSystemTestCase
  setup do
    @medidor = medidores(:one)
  end

  test "visiting the index" do
    visit medidores_url
    assert_selector "h1", text: "Medidores"
  end

  test "creating a Medidor" do
    visit medidores_url
    click_on "New Medidor"

    fill_in "Corriente", with: @medidor.corriente
    fill_in "Cperds", with: @medidor.cperds
    fill_in "Cteapa", with: @medidor.cteapa
    fill_in "Ffabric", with: @medidor.ffabric
    fill_in "Marca", with: @medidor.marca_id
    fill_in "Modelo", with: @medidor.modelo
    fill_in "Nromedidor", with: @medidor.nromedidor
    fill_in "Suministro", with: @medidor.suministro_id
    fill_in "Tfase", with: @medidor.tfase_id
    fill_in "Tmedidor", with: @medidor.tmedidor_id
    fill_in "Ttension", with: @medidor.ttension_id
    click_on "Create Medidor"

    assert_text "Medidor was successfully created"
    click_on "Back"
  end

  test "updating a Medidor" do
    visit medidores_url
    click_on "Edit", match: :first

    fill_in "Corriente", with: @medidor.corriente
    fill_in "Cperds", with: @medidor.cperds
    fill_in "Cteapa", with: @medidor.cteapa
    fill_in "Ffabric", with: @medidor.ffabric
    fill_in "Marca", with: @medidor.marca_id
    fill_in "Modelo", with: @medidor.modelo
    fill_in "Nromedidor", with: @medidor.nromedidor
    fill_in "Suministro", with: @medidor.suministro_id
    fill_in "Tfase", with: @medidor.tfase_id
    fill_in "Tmedidor", with: @medidor.tmedidor_id
    fill_in "Ttension", with: @medidor.ttension_id
    click_on "Update Medidor"

    assert_text "Medidor was successfully updated"
    click_on "Back"
  end

  test "destroying a Medidor" do
    visit medidores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medidor was successfully destroyed"
  end
end
