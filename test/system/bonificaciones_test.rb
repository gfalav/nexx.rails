require "application_system_test_case"

class BonificacionesTest < ApplicationSystemTestCase
  setup do
    @bonificacion = bonificaciones(:one)
  end

  test "visiting the index" do
    visit bonificaciones_url
    assert_selector "h1", text: "Bonificaciones"
  end

  test "creating a Bonificacion" do
    visit bonificaciones_url
    click_on "New Bonificacion"

    fill_in "Edesal", with: @bonificacion.edesal_id
    fill_in "Fdesde", with: @bonificacion.fdesde
    fill_in "Fhasta", with: @bonificacion.fhasta
    fill_in "Linea", with: @bonificacion.linea
    fill_in "Porcentaje", with: @bonificacion.porcentaje
    click_on "Create Bonificacion"

    assert_text "Bonificacion was successfully created"
    click_on "Back"
  end

  test "updating a Bonificacion" do
    visit bonificaciones_url
    click_on "Edit", match: :first

    fill_in "Edesal", with: @bonificacion.edesal_id
    fill_in "Fdesde", with: @bonificacion.fdesde
    fill_in "Fhasta", with: @bonificacion.fhasta
    fill_in "Linea", with: @bonificacion.linea
    fill_in "Porcentaje", with: @bonificacion.porcentaje
    click_on "Update Bonificacion"

    assert_text "Bonificacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Bonificacion" do
    visit bonificaciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bonificacion was successfully destroyed"
  end
end
