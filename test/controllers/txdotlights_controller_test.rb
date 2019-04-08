require 'test_helper'

class TxdotlightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @txdotlight = txdotlights(:one)
  end

  test "should get index" do
    get txdotlights_url
    assert_response :success
  end

  test "should get new" do
    get new_txdotlight_url
    assert_response :success
  end

  test "should create txdotlight" do
    assert_difference('Txdotlight.count') do
      post txdotlights_url, params: { txdotlight: { callback: @txdotlight.callback, city: @txdotlight.city, comment: @txdotlight.comment, intersection: @txdotlight.intersection, lightout: @txdotlight.lightout, lightred: @txdotlight.lightred, name: @txdotlight.name, problem: @txdotlight.problem, state: @txdotlight.state, unitassigned: @txdotlight.unitassigned } }
    end

    assert_redirected_to txdotlight_url(Txdotlight.last)
  end

  test "should show txdotlight" do
    get txdotlight_url(@txdotlight)
    assert_response :success
  end

  test "should get edit" do
    get edit_txdotlight_url(@txdotlight)
    assert_response :success
  end

  test "should update txdotlight" do
    patch txdotlight_url(@txdotlight), params: { txdotlight: { callback: @txdotlight.callback, city: @txdotlight.city, comment: @txdotlight.comment, intersection: @txdotlight.intersection, lightout: @txdotlight.lightout, lightred: @txdotlight.lightred, name: @txdotlight.name, problem: @txdotlight.problem, state: @txdotlight.state, unitassigned: @txdotlight.unitassigned } }
    assert_redirected_to txdotlight_url(@txdotlight)
  end

  test "should destroy txdotlight" do
    assert_difference('Txdotlight.count', -1) do
      delete txdotlight_url(@txdotlight)
    end

    assert_redirected_to txdotlights_url
  end
end
