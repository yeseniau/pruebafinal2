require "test_helper"

class MedicalrecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medicalrecord = medicalrecords(:one)
  end

  test "should get index" do
    get medicalrecords_url
    assert_response :success
  end

  test "should get new" do
    get new_medicalrecord_url
    assert_response :success
  end

  test "should create medicalrecord" do
    assert_difference("Medicalrecord.count") do
      post medicalrecords_url, params: { medicalrecord: { appoiment_id: @medicalrecord.appoiment_id, diagnostico: @medicalrecord.diagnostico, notas_relevantes: @medicalrecord.notas_relevantes, pet_id: @medicalrecord.pet_id, tratamiento: @medicalrecord.tratamiento } }
    end

    assert_redirected_to medicalrecord_url(Medicalrecord.last)
  end

  test "should show medicalrecord" do
    get medicalrecord_url(@medicalrecord)
    assert_response :success
  end

  test "should get edit" do
    get edit_medicalrecord_url(@medicalrecord)
    assert_response :success
  end

  test "should update medicalrecord" do
    patch medicalrecord_url(@medicalrecord), params: { medicalrecord: { appoiment_id: @medicalrecord.appoiment_id, diagnostico: @medicalrecord.diagnostico, notas_relevantes: @medicalrecord.notas_relevantes, pet_id: @medicalrecord.pet_id, tratamiento: @medicalrecord.tratamiento } }
    assert_redirected_to medicalrecord_url(@medicalrecord)
  end

  test "should destroy medicalrecord" do
    assert_difference("Medicalrecord.count", -1) do
      delete medicalrecord_url(@medicalrecord)
    end

    assert_redirected_to medicalrecords_url
  end
end
