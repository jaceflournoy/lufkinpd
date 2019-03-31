require 'test_helper'

class IthelpticketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ithelpticket = ithelptickets(:one)
  end

  test "should get index" do
    get ithelptickets_url
    assert_response :success
  end

  test "should get new" do
    get new_ithelpticket_url
    assert_response :success
  end

  test "should create ithelpticket" do
    assert_difference('Ithelpticket.count') do
      post ithelptickets_url, params: { ithelpticket: { name: @ithelpticket.name, problem: @ithelpticket.problem, unit: @ithelpticket.unit } }
    end

    assert_redirected_to ithelpticket_url(Ithelpticket.last)
  end

  test "should show ithelpticket" do
    get ithelpticket_url(@ithelpticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_ithelpticket_url(@ithelpticket)
    assert_response :success
  end

  test "should update ithelpticket" do
    patch ithelpticket_url(@ithelpticket), params: { ithelpticket: { name: @ithelpticket.name, problem: @ithelpticket.problem, unit: @ithelpticket.unit } }
    assert_redirected_to ithelpticket_url(@ithelpticket)
  end

  test "should destroy ithelpticket" do
    assert_difference('Ithelpticket.count', -1) do
      delete ithelpticket_url(@ithelpticket)
    end

    assert_redirected_to ithelptickets_url
  end
end
