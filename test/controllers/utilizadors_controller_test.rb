require 'test_helper'

class UtilizadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utilizador = utilizadors(:one)
  end

  test "should get index" do
    get utilizadors_url
    assert_response :success
  end

  test "should get new" do
    get new_utilizador_url
    assert_response :success
  end

  test "should create utilizador" do
    assert_difference('Utilizador.count') do
      post utilizadors_url, params: { utilizador: { email: @utilizador.email, identificador: @utilizador.identificador, matricula: @utilizador.matricula, nome: @utilizador.nome } }
    end

    assert_redirected_to utilizador_url(Utilizador.last)
  end

  test "should show utilizador" do
    get utilizador_url(@utilizador)
    assert_response :success
  end

  test "should get edit" do
    get edit_utilizador_url(@utilizador)
    assert_response :success
  end

  test "should update utilizador" do
    patch utilizador_url(@utilizador), params: { utilizador: { email: @utilizador.email, identificador: @utilizador.identificador, matricula: @utilizador.matricula, nome: @utilizador.nome } }
    assert_redirected_to utilizador_url(@utilizador)
  end

  test "should destroy utilizador" do
    assert_difference('Utilizador.count', -1) do
      delete utilizador_url(@utilizador)
    end

    assert_redirected_to utilizadors_url
  end
end
