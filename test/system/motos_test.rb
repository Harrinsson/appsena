require "application_system_test_case"

class MotosTest < ApplicationSystemTestCase
  setup do
    @moto = motos(:one)
  end

  test "visiting the index" do
    visit motos_url
    assert_selector "h1", text: "Motos"
  end

  test "should create moto" do
    visit motos_url
    click_on "New moto"

    fill_in "Color", with: @moto.color
    fill_in "Id propietario", with: @moto.id_propietario
    fill_in "Marca", with: @moto.marca
    fill_in "Matricula", with: @moto.matricula
    click_on "Create Moto"

    assert_text "Moto was successfully created"
    click_on "Back"
  end

  test "should update Moto" do
    visit moto_url(@moto)
    click_on "Edit this moto", match: :first

    fill_in "Color", with: @moto.color
    fill_in "Id propietario", with: @moto.id_propietario
    fill_in "Marca", with: @moto.marca
    fill_in "Matricula", with: @moto.matricula
    click_on "Update Moto"

    assert_text "Moto was successfully updated"
    click_on "Back"
  end

  test "should destroy Moto" do
    visit moto_url(@moto)
    click_on "Destroy this moto", match: :first

    assert_text "Moto was successfully destroyed"
  end
end
