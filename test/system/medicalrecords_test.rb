require "application_system_test_case"

class MedicalrecordsTest < ApplicationSystemTestCase
  setup do
    @medicalrecord = medicalrecords(:one)
  end

  test "visiting the index" do
    visit medicalrecords_url
    assert_selector "h1", text: "Medicalrecords"
  end

  test "should create medicalrecord" do
    visit medicalrecords_url
    click_on "New medicalrecord"

    fill_in "Appoiment", with: @medicalrecord.appoiment_id
    fill_in "Diagnostico", with: @medicalrecord.diagnostico
    fill_in "Notas relevantes", with: @medicalrecord.notas_relevantes
    fill_in "Pet", with: @medicalrecord.pet_id
    fill_in "Tratamiento", with: @medicalrecord.tratamiento
    click_on "Create Medicalrecord"

    assert_text "Medicalrecord was successfully created"
    click_on "Back"
  end

  test "should update Medicalrecord" do
    visit medicalrecord_url(@medicalrecord)
    click_on "Edit this medicalrecord", match: :first

    fill_in "Appoiment", with: @medicalrecord.appoiment_id
    fill_in "Diagnostico", with: @medicalrecord.diagnostico
    fill_in "Notas relevantes", with: @medicalrecord.notas_relevantes
    fill_in "Pet", with: @medicalrecord.pet_id
    fill_in "Tratamiento", with: @medicalrecord.tratamiento
    click_on "Update Medicalrecord"

    assert_text "Medicalrecord was successfully updated"
    click_on "Back"
  end

  test "should destroy Medicalrecord" do
    visit medicalrecord_url(@medicalrecord)
    click_on "Destroy this medicalrecord", match: :first

    assert_text "Medicalrecord was successfully destroyed"
  end
end
