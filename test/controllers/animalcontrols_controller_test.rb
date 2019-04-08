require 'test_helper'

class AnimalcontrolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animalcontrol = animalcontrols(:one)
  end

  test "should get index" do
    get animalcontrols_url
    assert_response :success
  end

  test "should get new" do
    get new_animalcontrol_url
    assert_response :success
  end

  test "should create animalcontrol" do
    assert_difference('Animalcontrol.count') do
      post animalcontrols_url, params: { animalcontrol: { address: @animalcontrol.address, callback: @animalcontrol.callback, comment: @animalcontrol.comment, name: @animalcontrol.name, problem: @animalcontrol.problem, unitassigned: @animalcontrol.unitassigned } }
    end

    assert_redirected_to animalcontrol_url(Animalcontrol.last)
  end

  test "should show animalcontrol" do
    get animalcontrol_url(@animalcontrol)
    assert_response :success
  end

  test "should get edit" do
    get edit_animalcontrol_url(@animalcontrol)
    assert_response :success
  end

  test "should update animalcontrol" do
    patch animalcontrol_url(@animalcontrol), params: { animalcontrol: { address: @animalcontrol.address, callback: @animalcontrol.callback, comment: @animalcontrol.comment, name: @animalcontrol.name, problem: @animalcontrol.problem, unitassigned: @animalcontrol.unitassigned } }
    assert_redirected_to animalcontrol_url(@animalcontrol)
  end

  test "should destroy animalcontrol" do
    assert_difference('Animalcontrol.count', -1) do
      delete animalcontrol_url(@animalcontrol)
    end

    assert_redirected_to animalcontrols_url
  end
end
