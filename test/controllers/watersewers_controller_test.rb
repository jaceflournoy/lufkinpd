require 'test_helper'

class WatersewersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @watersewer = watersewers(:one)
  end

  test "should get index" do
    get watersewers_url
    assert_response :success
  end

  test "should get new" do
    get new_watersewer_url
    assert_response :success
  end

  test "should create watersewer" do
    assert_difference('Watersewer.count') do
      post watersewers_url, params: { watersewer: { address: @watersewer.address, callback: @watersewer.callback, cityleak: @watersewer.cityleak, comment: @watersewer.comment, name: @watersewer.name, noleak: @watersewer.noleak, privateleak: @watersewer.privateleak, problem: @watersewer.problem, unitassigned: @watersewer.unitassigned, wateroff: @watersewer.wateroff } }
    end

    assert_redirected_to watersewer_url(Watersewer.last)
  end

  test "should show watersewer" do
    get watersewer_url(@watersewer)
    assert_response :success
  end

  test "should get edit" do
    get edit_watersewer_url(@watersewer)
    assert_response :success
  end

  test "should update watersewer" do
    patch watersewer_url(@watersewer), params: { watersewer: { address: @watersewer.address, callback: @watersewer.callback, cityleak: @watersewer.cityleak, comment: @watersewer.comment, name: @watersewer.name, noleak: @watersewer.noleak, privateleak: @watersewer.privateleak, problem: @watersewer.problem, unitassigned: @watersewer.unitassigned, wateroff: @watersewer.wateroff } }
    assert_redirected_to watersewer_url(@watersewer)
  end

  test "should destroy watersewer" do
    assert_difference('Watersewer.count', -1) do
      delete watersewer_url(@watersewer)
    end

    assert_redirected_to watersewers_url
  end
end
