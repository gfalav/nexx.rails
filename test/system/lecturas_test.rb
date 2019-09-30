require "application_system_test_case"

class LecturasTest < ApplicationSystemTestCase
  setup do
    @lectura = lecturas(:one)
  end

  test "visiting the index" do
    visit lecturas_url
    assert_selector "h1", text: "Lecturas"
  end

  test "creating a Lectura" do
    visit lecturas_url
    click_on "New Lectura"

    fill_in "Consumo", with: @lectura.consumo
    fill_in "Ctelect", with: @lectura.ctelect
    fill_in "Electura", with: @lectura.electura_id
    fill_in "Flectura", with: @lectura.flectura
    fill_in "Lectura", with: @lectura.lectura
    fill_in "Medidor", with: @lectura.medidor_id
    fill_in "Tconsumo", with: @lectura.tconsumo_id
    fill_in "Tlectura", with: @lectura.tlectura_id
    click_on "Create Lectura"

    assert_text "Lectura was successfully created"
    click_on "Back"
  end

  test "updating a Lectura" do
    visit lecturas_url
    click_on "Edit", match: :first

    fill_in "Consumo", with: @lectura.consumo
    fill_in "Ctelect", with: @lectura.ctelect
    fill_in "Electura", with: @lectura.electura_id
    fill_in "Flectura", with: @lectura.flectura
    fill_in "Lectura", with: @lectura.lectura
    fill_in "Medidor", with: @lectura.medidor_id
    fill_in "Tconsumo", with: @lectura.tconsumo_id
    fill_in "Tlectura", with: @lectura.tlectura_id
    click_on "Update Lectura"

    assert_text "Lectura was successfully updated"
    click_on "Back"
  end

  test "destroying a Lectura" do
    visit lecturas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lectura was successfully destroyed"
  end
end
