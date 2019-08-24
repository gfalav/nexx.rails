require "application_system_test_case"

class DireccionesTest < ApplicationSystemTestCase
  setup do
    @direccion = direcciones(:one)
  end

  test "visiting the index" do
    visit direcciones_url
    assert_selector "h1", text: "Direcciones"
  end

  test "creating a Direccion" do
    visit direcciones_url
    click_on "New Direccion"

    fill_in "Acceso", with: @direccion.acceso
    fill_in "Calle", with: @direccion.calle_id
    fill_in "Gpslat", with: @direccion.gpslat
    fill_in "Gpslong", with: @direccion.gpslong
    fill_in "Nro", with: @direccion.nro
    fill_in "Pdepto", with: @direccion.pdepto
    click_on "Create Direccion"

    assert_text "Direccion was successfully created"
    click_on "Back"
  end

  test "updating a Direccion" do
    visit direcciones_url
    click_on "Edit", match: :first

    fill_in "Acceso", with: @direccion.acceso
    fill_in "Calle", with: @direccion.calle_id
    fill_in "Gpslat", with: @direccion.gpslat
    fill_in "Gpslong", with: @direccion.gpslong
    fill_in "Nro", with: @direccion.nro
    fill_in "Pdepto", with: @direccion.pdepto
    click_on "Update Direccion"

    assert_text "Direccion was successfully updated"
    click_on "Back"
  end

  test "destroying a Direccion" do
    visit direcciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Direccion was successfully destroyed"
  end
end
