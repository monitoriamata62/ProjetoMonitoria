require 'test_helper'

class DisciplinasControllerTest <   ActionDispatch::IntegrationTest
  #include Devise::Test::ControllerHelpers
  setup do
    @disciplina = disciplinas(:one)
  end

  test "should get index" do
    get disciplinas_url
    assert_response :success
  end


  test "should show disciplina" do
    get disciplina_url(@disciplina)
    assert_response :success
  end

end
