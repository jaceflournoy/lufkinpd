require 'test_helper'

class CitystreetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @citystreet = citystreets(:one)
  end

  test "should get index" do
    get citystreets_url
    assert_response :success
  end

  test "should get new" do
    get new_citystreet_url
    assert_response :success
  end

  test "should create citystreet" do
    assert_difference('Citystreet.count') do
      post citystreets_url, params: { citystreet: { address: @citystreet.address, callback: @citystreet.callback, city: @citystreet.city, closestintersection: @citystreet.closestintersection, comment: @citystreet.comment, lightout: @citystreet.lightout, lightred: @citystreet.lightred, name: @citystreet.name, needed: @citystreet.needed, problem: @citystreet.problem, roadhazard: @citystreet.roadhazard, state: @citystreet.state, unitassigned: @citystreet.unitassigned } }
    end

    assert_redirected_to citystreet_url(Citystreet.last)
  end

  test "should show citystreet" do
    get citystreet_url(@citystreet)
    assert_response :success
  end

  test "should get edit" do
    get edit_citystreet_url(@citystreet)
    assert_response :success
  end

  test "should update citystreet" do
    patch citystreet_url(@citystreet), params: { citystreet: { address: @citystreet.address, callback: @citystreet.callback, city: @citystreet.city, closestintersection: @citystreet.closestintersection, comment: @citystreet.comment, lightout: @citystreet.lightout, lightred: @citystreet.lightred, name: @citystreet.name, needed: @citystreet.needed, problem: @citystreet.problem, roadhazard: @citystreet.roadhazard, state: @citystreet.state, unitassigned: @citystreet.unitassigned } }
    assert_redirected_to citystreet_url(@citystreet)
  end

  test "should destroy citystreet" do
    assert_difference('Citystreet.count', -1) do
      delete citystreet_url(@citystreet)
    end

    assert_redirected_to citystreets_url
  end
end
