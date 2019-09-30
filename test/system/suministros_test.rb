require "application_system_test_case"

class SuministrosTest < ApplicationSystemTestCase
  setup do
    @suministro = suministros(:one)
  end

  test "visiting the index" do
    visit suministros_url
    assert_selector "h1", text: "Suministros"
  end

  test "creating a Suministro" do
    visit suministros_url
    click_on "New Suministro"

    fill_in "Direccion", with: @suministro.direccion_id
    fill_in "Edesal", with: @suministro.edesal_id
    fill_in "Nombre", with: @suministro.nombre
    fill_in "Tconexion", with: @suministro.tconexion_id
    fill_in "Tfase", with: @suministro.tfase_id
    fill_in "Tmedicion", with: @suministro.tmedicion_id
    fill_in "Ttension", with: @suministro.ttension_id
    click_on "Create Suministro"

    assert_text "Suministro was successfully created"
    click_on "Back"
  end

  test "updating a Suministro" do
    visit suministros_url
    click_on "Edit", match: :first

    fill_in "Direccion", with: @suministro.direccion_id
    fill_in "Edesal", with: @suministro.edesal_id
    fill_in "Nombre", with: @suministro.nombre
    fill_in "Tconexion", with: @suministro.tconexion_id
    fill_in "Tfase", with: @suministro.tfase_id
    fill_in "Tmedicion", with: @suministro.tmedicion_id
    fill_in "Ttension", with: @suministro.ttension_id
    click_on "Update Suministro"

    assert_text "Suministro was successfully updated"
    click_on "Back"
  end

  test "destroying a Suministro" do
    visit suministros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suministro was successfully destroyed"
  end
end
