require 'test_helper'

class RollcallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rollcall = rollcalls(:one)
  end

  test "should get index" do
    get rollcalls_url
    assert_response :success
  end

  test "should get new" do
    get new_rollcall_url
    assert_response :success
  end

  test "should create rollcall" do
    assert_difference('Rollcall.count') do
      post rollcalls_url, params: { rollcall: { description: @rollcall.description, radionum: @rollcall.radionum, title: @rollcall.title } }
    end

    assert_redirected_to rollcall_url(Rollcall.last)
  end

  test "should show rollcall" do
    get rollcall_url(@rollcall)
    assert_response :success
  end

  test "should get edit" do
    get edit_rollcall_url(@rollcall)
    assert_response :success
  end

  test "should update rollcall" do
    patch rollcall_url(@rollcall), params: { rollcall: { description: @rollcall.description, radionum: @rollcall.radionum, title: @rollcall.title } }
    assert_redirected_to rollcall_url(@rollcall)
  end

  test "should destroy rollcall" do
    assert_difference('Rollcall.count', -1) do
      delete rollcall_url(@rollcall)
    end

    assert_redirected_to rollcalls_url
  end
end
