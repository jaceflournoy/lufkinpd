require 'test_helper'

class DaysoffrequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daysoffrequest = daysoffrequests(:one)
  end

  test "should get index" do
    get daysoffrequests_url
    assert_response :success
  end

  test "should get new" do
    get new_daysoffrequest_url
    assert_response :success
  end

  test "should create daysoffrequest" do
    assert_difference('Daysoffrequest.count') do
      post daysoffrequests_url, params: { daysoffrequest: { approved: @daysoffrequest.approved, comment: @daysoffrequest.comment, firstdayoff: @daysoffrequest.firstdayoff, hoursrequested: @daysoffrequest.hoursrequested, lastdayoff: @daysoffrequest.lastdayoff, operatorname: @daysoffrequest.operatorname, returndate: @daysoffrequest.returndate } }
    end

    assert_redirected_to daysoffrequest_url(Daysoffrequest.last)
  end

  test "should show daysoffrequest" do
    get daysoffrequest_url(@daysoffrequest)
    assert_response :success
  end

  test "should get edit" do
    get edit_daysoffrequest_url(@daysoffrequest)
    assert_response :success
  end

  test "should update daysoffrequest" do
    patch daysoffrequest_url(@daysoffrequest), params: { daysoffrequest: { approved: @daysoffrequest.approved, comment: @daysoffrequest.comment, firstdayoff: @daysoffrequest.firstdayoff, hoursrequested: @daysoffrequest.hoursrequested, lastdayoff: @daysoffrequest.lastdayoff, operatorname: @daysoffrequest.operatorname, returndate: @daysoffrequest.returndate } }
    assert_redirected_to daysoffrequest_url(@daysoffrequest)
  end

  test "should destroy daysoffrequest" do
    assert_difference('Daysoffrequest.count', -1) do
      delete daysoffrequest_url(@daysoffrequest)
    end

    assert_redirected_to daysoffrequests_url
  end
end
