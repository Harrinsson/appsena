require "test_helper"

class MotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moto = motos(:one)
  end

  test "should get index" do
    get motos_url
    assert_response :success
  end

  test "should get new" do
    get new_moto_url
    assert_response :success
  end

  test "should create moto" do
    assert_difference("Moto.count") do
      post motos_url, params: { moto: { color: @moto.color, id_propietario: @moto.id_propietario, marca: @moto.marca, matricula: @moto.matricula } }
    end

    assert_redirected_to moto_url(Moto.last)
  end

  test "should show moto" do
    get moto_url(@moto)
    assert_response :success
  end

  test "should get edit" do
    get edit_moto_url(@moto)
    assert_response :success
  end

  test "should update moto" do
    patch moto_url(@moto), params: { moto: { color: @moto.color, id_propietario: @moto.id_propietario, marca: @moto.marca, matricula: @moto.matricula } }
    assert_redirected_to moto_url(@moto)
  end

  test "should destroy moto" do
    assert_difference("Moto.count", -1) do
      delete moto_url(@moto)
    end

    assert_redirected_to motos_url
  end
end
