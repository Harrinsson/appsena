require "test_helper"

class OrdenLaboratoriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orden_laboratorio = orden_laboratorios(:one)
  end

  test "should get index" do
    get orden_laboratorios_url
    assert_response :success
  end

  test "should get new" do
    get new_orden_laboratorio_url
    assert_response :success
  end

  test "should create orden_laboratorio" do
    assert_difference("OrdenLaboratorio.count") do
      post orden_laboratorios_url, params: { orden_laboratorio: { codigo_documento: @orden_laboratorio.codigo_documento, fecha_orden: @orden_laboratorio.fecha_orden, numero_orden: @orden_laboratorio.numero_orden, paciente_id: @orden_laboratorio.paciente_id } }
    end

    assert_redirected_to orden_laboratorio_url(OrdenLaboratorio.last)
  end

  test "should show orden_laboratorio" do
    get orden_laboratorio_url(@orden_laboratorio)
    assert_response :success
  end

  test "should get edit" do
    get edit_orden_laboratorio_url(@orden_laboratorio)
    assert_response :success
  end

  test "should update orden_laboratorio" do
    patch orden_laboratorio_url(@orden_laboratorio), params: { orden_laboratorio: { codigo_documento: @orden_laboratorio.codigo_documento, fecha_orden: @orden_laboratorio.fecha_orden, numero_orden: @orden_laboratorio.numero_orden, paciente_id: @orden_laboratorio.paciente_id } }
    assert_redirected_to orden_laboratorio_url(@orden_laboratorio)
  end

  test "should destroy orden_laboratorio" do
    assert_difference("OrdenLaboratorio.count", -1) do
      delete orden_laboratorio_url(@orden_laboratorio)
    end

    assert_redirected_to orden_laboratorios_url
  end
end
