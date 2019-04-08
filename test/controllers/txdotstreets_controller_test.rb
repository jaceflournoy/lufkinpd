require 'test_helper'

class TxdotstreetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @txdotstreet = txdotstreets(:one)
  end

  test "should get index" do
    get txdotstreets_url
    assert_response :success
  end

  test "should get new" do
    get new_txdotstreet_url
    assert_response :success
  end

  test "should create txdotstreet" do
    assert_difference('Txdotstreet.count') do
      post txdotstreets_url, params: { txdotstreet: { callback: @txdotstreet.callback, city: @txdotstreet.city, comment: @txdotstreet.comment, intersection: @txdotstreet.intersection, name: @txdotstreet.name, needed: @txdotstreet.needed, problem: @txdotstreet.problem, state: @txdotstreet.state, unitassigned: @txdotstreet.unitassigned } }
    end

    assert_redirected_to txdotstreet_url(Txdotstreet.last)
  end

  test "should show txdotstreet" do
    get txdotstreet_url(@txdotstreet)
    assert_response :success
  end

  test "should get edit" do
    get edit_txdotstreet_url(@txdotstreet)
    assert_response :success
  end

  test "should update txdotstreet" do
    patch txdotstreet_url(@txdotstreet), params: { txdotstreet: { callback: @txdotstreet.callback, city: @txdotstreet.city, comment: @txdotstreet.comment, intersection: @txdotstreet.intersection, name: @txdotstreet.name, needed: @txdotstreet.needed, problem: @txdotstreet.problem, state: @txdotstreet.state, unitassigned: @txdotstreet.unitassigned } }
    assert_redirected_to txdotstreet_url(@txdotstreet)
  end

  test "should destroy txdotstreet" do
    assert_difference('Txdotstreet.count', -1) do
      delete txdotstreet_url(@txdotstreet)
    end

    assert_redirected_to txdotstreets_url
  end
end
