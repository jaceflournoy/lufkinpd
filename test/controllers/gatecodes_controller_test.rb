require 'test_helper'

class GatecodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gatecode = gatecodes(:one)
  end

  test "should get index" do
    get gatecodes_url
    assert_response :success
  end

  test "should get new" do
    get new_gatecode_url
    assert_response :success
  end

  test "should create gatecode" do
    assert_difference('Gatecode.count') do
      post gatecodes_url, params: { gatecode: { code: @gatecode.code, location: @gatecode.location } }
    end

    assert_redirected_to gatecode_url(Gatecode.last)
  end

  test "should show gatecode" do
    get gatecode_url(@gatecode)
    assert_response :success
  end

  test "should get edit" do
    get edit_gatecode_url(@gatecode)
    assert_response :success
  end

  test "should update gatecode" do
    patch gatecode_url(@gatecode), params: { gatecode: { code: @gatecode.code, location: @gatecode.location } }
    assert_redirected_to gatecode_url(@gatecode)
  end

  test "should destroy gatecode" do
    assert_difference('Gatecode.count', -1) do
      delete gatecode_url(@gatecode)
    end

    assert_redirected_to gatecodes_url
  end
end
