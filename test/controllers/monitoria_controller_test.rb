require 'test_helper'

class MonitoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monitorium = monitoria(:one)
  end

  test "should get index" do
    get monitoria_url
    assert_response :success
  end

  

  test "should show monitorium" do
    get monitorium_url(@monitorium)
    assert_response :success
  end

end
