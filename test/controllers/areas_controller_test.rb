require 'test_helper'

class AreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @area = areas(:one)
  end

  test "should get index" do
    get areas_url
    assert_response :success
  end


  
  test "should show area" do
    get area_url(@area)
    assert_response :success
  end

end
