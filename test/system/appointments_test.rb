require "application_system_test_case"

class AppointmentsTest < ApplicationSystemTestCase
  setup do
    @appointment = appointments(:one)
  end

  test "visiting the index" do
    visit appointments_url
    assert_selector "h1", text: "Appointments"
  end

  test "should create appointment" do
    visit appointments_url
    click_on "New appointment"

    fill_in "Duracion", with: @appointment.duracion
    fill_in "Estado", with: @appointment.estado
    fill_in "Fecha", with: @appointment.fecha
    fill_in "Hora", with: @appointment.hora
    fill_in "Pet", with: @appointment.pet_id
    fill_in "Vet", with: @appointment.vet_id
    click_on "Create Appointment"

    assert_text "Appointment was successfully created"
    click_on "Back"
  end

  test "should update Appointment" do
    visit appointment_url(@appointment)
    click_on "Edit this appointment", match: :first

    fill_in "Duracion", with: @appointment.duracion
    fill_in "Estado", with: @appointment.estado
    fill_in "Fecha", with: @appointment.fecha
    fill_in "Hora", with: @appointment.hora
    fill_in "Pet", with: @appointment.pet_id
    fill_in "Vet", with: @appointment.vet_id
    click_on "Update Appointment"

    assert_text "Appointment was successfully updated"
    click_on "Back"
  end

  test "should destroy Appointment" do
    visit appointment_url(@appointment)
    click_on "Destroy this appointment", match: :first

    assert_text "Appointment was successfully destroyed"
  end
end
