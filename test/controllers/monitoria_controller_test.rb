require 'test_helper'

class MonitoriaControllerTest <  ActionController::TestCase
  include Devise::Test::ControllerHelpers
  setup do
    @monitorium = monitoria(:one)
  end

  test "should get index" do
    get monitoria_url
    assert_response :success
  end

  test "should get new" do
    sign_in @user
    get new_monitorium_url
    assert_response :success
  end

  test "should create monitorium" do
    sign_in @user
    assert_difference('Monitorium.count') do
      post monitoria_url, params: { monitorium: { data: @monitorium.data, disciplina_id: @monitorium.disciplina_id, fim: @monitorium.fim, inicio: @monitorium.inicio, local: @monitorium.local, monitor: @monitorium.monitor } }
    end

    assert_redirected_to monitorium_url(Monitorium.last)
  end

  test "should show monitorium" do
    get monitorium_url(@monitorium)
    assert_response :success
  end

  test "should get edit" do
    sign_in @user
    get edit_monitorium_url(@monitorium)
    assert_response :success
  end

  test "should update monitorium" do
    sign_in @user
    patch monitorium_url(@monitorium), params: { monitorium: { data: @monitorium.data, disciplina_id: @monitorium.disciplina_id, fim: @monitorium.fim, inicio: @monitorium.inicio, local: @monitorium.local, monitor: @monitorium.monitor } }
    assert_redirected_to monitorium_url(@monitorium)
  end

  test "should destroy monitorium" do
    sign_in @user
    assert_difference('Monitorium.count', -1) do
      delete monitorium_url(@monitorium)
    end

    assert_redirected_to monitoria_url
  end
end
