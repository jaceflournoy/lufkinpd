require 'test_helper'

class RadionumbersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @radionumber = radionumbers(:one)
  end

  test "should get index" do
    get radionumbers_url
    assert_response :success
  end

  test "should get new" do
    get new_radionumber_url
    assert_response :success
  end

  test "should create radionumber" do
    assert_difference('Radionumber.count') do
      post radionumbers_url, params: { radionumber: { extrainfo: @radionumber.extrainfo, officer: @radionumber.officer, radionumber: @radionumber.radionumber } }
    end

    assert_redirected_to radionumber_url(Radionumber.last)
  end

  test "should show radionumber" do
    get radionumber_url(@radionumber)
    assert_response :success
  end

  test "should get edit" do
    get edit_radionumber_url(@radionumber)
    assert_response :success
  end

  test "should update radionumber" do
    patch radionumber_url(@radionumber), params: { radionumber: { extrainfo: @radionumber.extrainfo, officer: @radionumber.officer, radionumber: @radionumber.radionumber } }
    assert_redirected_to radionumber_url(@radionumber)
  end

  test "should destroy radionumber" do
    assert_difference('Radionumber.count', -1) do
      delete radionumber_url(@radionumber)
    end

    assert_redirected_to radionumbers_url
  end
end
