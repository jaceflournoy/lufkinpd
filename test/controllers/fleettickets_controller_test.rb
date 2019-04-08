require 'test_helper'

class FleetticketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fleetticket = fleettickets(:one)
  end

  test "should get index" do
    get fleettickets_url
    assert_response :success
  end

  test "should get new" do
    get new_fleetticket_url
    assert_response :success
  end

  test "should create fleetticket" do
    assert_difference('Fleetticket.count') do
      post fleettickets_url, params: { fleetticket: { problem: @fleetticket.problem, reportingofficer: @fleetticket.reportingofficer, unitnumber: @fleetticket.unitnumber } }
    end

    assert_redirected_to fleetticket_url(Fleetticket.last)
  end

  test "should show fleetticket" do
    get fleetticket_url(@fleetticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_fleetticket_url(@fleetticket)
    assert_response :success
  end

  test "should update fleetticket" do
    patch fleetticket_url(@fleetticket), params: { fleetticket: { problem: @fleetticket.problem, reportingofficer: @fleetticket.reportingofficer, unitnumber: @fleetticket.unitnumber } }
    assert_redirected_to fleetticket_url(@fleetticket)
  end

  test "should destroy fleetticket" do
    assert_difference('Fleetticket.count', -1) do
      delete fleetticket_url(@fleetticket)
    end

    assert_redirected_to fleettickets_url
  end
end
