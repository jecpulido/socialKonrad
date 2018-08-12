require "application_system_test_case"

class CorreosTest < ApplicationSystemTestCase
  setup do
    @correo = correos(:one)
  end

  test "visiting the index" do
    visit correos_url
    assert_selector "h1", text: "Correos"
  end

  test "creating a Correo" do
    visit correos_url
    click_on "New Correo"

    fill_in "Usuario", with: @correo.Usuario_id
    fill_in "Correo", with: @correo.correo
    click_on "Create Correo"

    assert_text "Correo was successfully created"
    click_on "Back"
  end

  test "updating a Correo" do
    visit correos_url
    click_on "Edit", match: :first

    fill_in "Usuario", with: @correo.Usuario_id
    fill_in "Correo", with: @correo.correo
    click_on "Update Correo"

    assert_text "Correo was successfully updated"
    click_on "Back"
  end

  test "destroying a Correo" do
    visit correos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Correo was successfully destroyed"
  end
end
