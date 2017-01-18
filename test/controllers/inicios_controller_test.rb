require 'test_helper'

class IniciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inicio = inicios(:one)
  end

  test "should get index" do
    get inicios_url
    assert_response :success
  end

  test "should get new" do
    get new_inicio_url
    assert_response :success
  end

  test "should create inicio" do
    assert_difference('Inicio.count') do
      post inicios_url, params: { inicio: {  } }
    end

    assert_redirected_to inicio_url(Inicio.last)
  end

  test "should show inicio" do
    get inicio_url(@inicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_inicio_url(@inicio)
    assert_response :success
  end

  test "should update inicio" do
    patch inicio_url(@inicio), params: { inicio: {  } }
    assert_redirected_to inicio_url(@inicio)
  end

  test "should destroy inicio" do
    assert_difference('Inicio.count', -1) do
      delete inicio_url(@inicio)
    end

    assert_redirected_to inicios_url
  end
end
