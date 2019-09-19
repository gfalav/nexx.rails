require "application_system_test_case"

class EnumeradosTest < ApplicationSystemTestCase
  setup do
    @enumerado = enumerados(:one)
  end

  test "visiting the index" do
    visit enumerados_url
    assert_selector "h1", text: "Enumerados"
  end

  test "creating a Enumerado" do
    visit enumerados_url
    click_on "New Enumerado"

    fill_in "Codigo", with: @enumerado.codigo
    fill_in "Descripcion", with: @enumerado.descripcion
    fill_in "Detalle", with: @enumerado.detalle
    fill_in "Radical", with: @enumerado.radical
    click_on "Create Enumerado"

    assert_text "Enumerado was successfully created"
    click_on "Back"
  end

  test "updating a Enumerado" do
    visit enumerados_url
    click_on "Edit", match: :first

    fill_in "Codigo", with: @enumerado.codigo
    fill_in "Descripcion", with: @enumerado.descripcion
    fill_in "Detalle", with: @enumerado.detalle
    fill_in "Radical", with: @enumerado.radical
    click_on "Update Enumerado"

    assert_text "Enumerado was successfully updated"
    click_on "Back"
  end

  test "destroying a Enumerado" do
    visit enumerados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enumerado was successfully destroyed"
  end
end
