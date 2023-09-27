require "application_system_test_case"

class VetsTest < ApplicationSystemTestCase
  setup do
    @vet = vets(:one)
  end

  test "visiting the index" do
    visit vets_url
    assert_selector "h1", text: "Vets"
  end

  test "should create vet" do
    visit vets_url
    click_on "New vet"

    fill_in "Apellido", with: @vet.apellido
    fill_in "Especialidad", with: @vet.especialidad
    fill_in "Nombre", with: @vet.nombre
    click_on "Create Vet"

    assert_text "Vet was successfully created"
    click_on "Back"
  end

  test "should update Vet" do
    visit vet_url(@vet)
    click_on "Edit this vet", match: :first

    fill_in "Apellido", with: @vet.apellido
    fill_in "Especialidad", with: @vet.especialidad
    fill_in "Nombre", with: @vet.nombre
    click_on "Update Vet"

    assert_text "Vet was successfully updated"
    click_on "Back"
  end

  test "should destroy Vet" do
    visit vet_url(@vet)
    click_on "Destroy this vet", match: :first

    assert_text "Vet was successfully destroyed"
  end
end
