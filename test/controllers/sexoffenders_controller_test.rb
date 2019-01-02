require 'test_helper'

class SexoffendersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sexoffender = sexoffenders(:one)
  end

  test "should get index" do
    get sexoffenders_url
    assert_response :success
  end

  test "should get new" do
    get new_sexoffender_url
    assert_response :success
  end

  test "should create sexoffender" do
    assert_difference('Sexoffender.count') do
      post sexoffenders_url, params: { sexoffender: { address: @sexoffender.address, name: @sexoffender.name, offense: @sexoffender.offense, officer: @sexoffender.officer, risklevel: @sexoffender.risklevel } }
    end

    assert_redirected_to sexoffender_url(Sexoffender.last)
  end

  test "should show sexoffender" do
    get sexoffender_url(@sexoffender)
    assert_response :success
  end

  test "should get edit" do
    get edit_sexoffender_url(@sexoffender)
    assert_response :success
  end

  test "should update sexoffender" do
    patch sexoffender_url(@sexoffender), params: { sexoffender: { address: @sexoffender.address, name: @sexoffender.name, offense: @sexoffender.offense, officer: @sexoffender.officer, risklevel: @sexoffender.risklevel } }
    assert_redirected_to sexoffender_url(@sexoffender)
  end

  test "should destroy sexoffender" do
    assert_difference('Sexoffender.count', -1) do
      delete sexoffender_url(@sexoffender)
    end

    assert_redirected_to sexoffenders_url
  end
end
