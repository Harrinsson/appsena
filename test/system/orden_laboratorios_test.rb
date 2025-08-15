require "application_system_test_case"

class OrdenLaboratoriosTest < ApplicationSystemTestCase
  setup do
    @orden_laboratorio = orden_laboratorios(:one)
  end

  test "visiting the index" do
    visit orden_laboratorios_url
    assert_selector "h1", text: "Orden laboratorios"
  end

  test "should create orden laboratorio" do
    visit orden_laboratorios_url
    click_on "New orden laboratorio"

    fill_in "Codigo documento", with: @orden_laboratorio.codigo_documento
    fill_in "Fecha orden", with: @orden_laboratorio.fecha_orden
    fill_in "Numero orden", with: @orden_laboratorio.numero_orden
    fill_in "Paciente", with: @orden_laboratorio.paciente_id
    click_on "Create Orden laboratorio"

    assert_text "Orden laboratorio was successfully created"
    click_on "Back"
  end

  test "should update Orden laboratorio" do
    visit orden_laboratorio_url(@orden_laboratorio)
    click_on "Edit this orden laboratorio", match: :first

    fill_in "Codigo documento", with: @orden_laboratorio.codigo_documento
    fill_in "Fecha orden", with: @orden_laboratorio.fecha_orden
    fill_in "Numero orden", with: @orden_laboratorio.numero_orden
    fill_in "Paciente", with: @orden_laboratorio.paciente_id
    click_on "Update Orden laboratorio"

    assert_text "Orden laboratorio was successfully updated"
    click_on "Back"
  end

  test "should destroy Orden laboratorio" do
    visit orden_laboratorio_url(@orden_laboratorio)
    click_on "Destroy this orden laboratorio", match: :first

    assert_text "Orden laboratorio was successfully destroyed"
  end
end
