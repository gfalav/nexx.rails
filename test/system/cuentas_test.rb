require "application_system_test_case"

class CuentasTest < ApplicationSystemTestCase
  setup do
    @cuenta = cuentas(:one)
  end

  test "visiting the index" do
    visit cuentas_url
    assert_selector "h1", text: "Cuentas"
  end

  test "creating a Cuenta" do
    visit cuentas_url
    click_on "New Cuenta"

    fill_in "Cliente", with: @cuenta.cliente_id
    fill_in "Dirpostal", with: @cuenta.dirpostal_id
    fill_in "Nombre", with: @cuenta.nombre
    fill_in "Timpagado", with: @cuenta.timpagado_id
    fill_in "Tpago", with: @cuenta.tpago_id
    fill_in "Tvencimiento", with: @cuenta.tvencimiento_id
    click_on "Create Cuenta"

    assert_text "Cuenta was successfully created"
    click_on "Back"
  end

  test "updating a Cuenta" do
    visit cuentas_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @cuenta.cliente_id
    fill_in "Dirpostal", with: @cuenta.dirpostal_id
    fill_in "Nombre", with: @cuenta.nombre
    fill_in "Timpagado", with: @cuenta.timpagado_id
    fill_in "Tpago", with: @cuenta.tpago_id
    fill_in "Tvencimiento", with: @cuenta.tvencimiento_id
    click_on "Update Cuenta"

    assert_text "Cuenta was successfully updated"
    click_on "Back"
  end

  test "destroying a Cuenta" do
    visit cuentas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cuenta was successfully destroyed"
  end
end
