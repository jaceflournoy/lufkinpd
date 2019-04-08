require 'test_helper'

class GenericcalloutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genericcallout = genericcallouts(:one)
  end

  test "should get index" do
    get genericcallouts_url
    assert_response :success
  end

  test "should get new" do
    get new_genericcallout_url
    assert_response :success
  end

  test "should create genericcallout" do
    assert_difference('Genericcallout.count') do
      post genericcallouts_url, params: { genericcallout: { address: @genericcallout.address, callback: @genericcallout.callback, comment: @genericcallout.comment, name: @genericcallout.name, problem: @genericcallout.problem, unitassigned: @genericcallout.unitassigned } }
    end

    assert_redirected_to genericcallout_url(Genericcallout.last)
  end

  test "should show genericcallout" do
    get genericcallout_url(@genericcallout)
    assert_response :success
  end

  test "should get edit" do
    get edit_genericcallout_url(@genericcallout)
    assert_response :success
  end

  test "should update genericcallout" do
    patch genericcallout_url(@genericcallout), params: { genericcallout: { address: @genericcallout.address, callback: @genericcallout.callback, comment: @genericcallout.comment, name: @genericcallout.name, problem: @genericcallout.problem, unitassigned: @genericcallout.unitassigned } }
    assert_redirected_to genericcallout_url(@genericcallout)
  end

  test "should destroy genericcallout" do
    assert_difference('Genericcallout.count', -1) do
      delete genericcallout_url(@genericcallout)
    end

    assert_redirected_to genericcallouts_url
  end
end
