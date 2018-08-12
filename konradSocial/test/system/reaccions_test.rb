require "application_system_test_case"

class ReaccionsTest < ApplicationSystemTestCase
  setup do
    @reaccion = reaccions(:one)
  end

  test "visiting the index" do
    visit reaccions_url
    assert_selector "h1", text: "Reaccions"
  end

  test "creating a Reaccion" do
    visit reaccions_url
    click_on "New Reaccion"

    fill_in "Entrada", with: @reaccion.Entrada_id
    fill_in "Usuario", with: @reaccion.Usuario_id
    click_on "Create Reaccion"

    assert_text "Reaccion was successfully created"
    click_on "Back"
  end

  test "updating a Reaccion" do
    visit reaccions_url
    click_on "Edit", match: :first

    fill_in "Entrada", with: @reaccion.Entrada_id
    fill_in "Usuario", with: @reaccion.Usuario_id
    click_on "Update Reaccion"

    assert_text "Reaccion was successfully updated"
    click_on "Back"
  end

  test "destroying a Reaccion" do
    visit reaccions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reaccion was successfully destroyed"
  end
end
