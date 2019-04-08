require 'test_helper'

class VacationpatrolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vacationpatrol = vacationpatrols(:one)
  end

  test "should get index" do
    get vacationpatrols_url
    assert_response :success
  end

  test "should get new" do
    get new_vacationpatrol_url
    assert_response :success
  end

  test "should create vacationpatrol" do
    assert_difference('Vacationpatrol.count') do
      post vacationpatrols_url, params: { vacationpatrol: { comment: @vacationpatrol.comment, officer: @vacationpatrol.officer } }
    end

    assert_redirected_to vacationpatrol_url(Vacationpatrol.last)
  end

  test "should show vacationpatrol" do
    get vacationpatrol_url(@vacationpatrol)
    assert_response :success
  end

  test "should get edit" do
    get edit_vacationpatrol_url(@vacationpatrol)
    assert_response :success
  end

  test "should update vacationpatrol" do
    patch vacationpatrol_url(@vacationpatrol), params: { vacationpatrol: { comment: @vacationpatrol.comment, officer: @vacationpatrol.officer } }
    assert_redirected_to vacationpatrol_url(@vacationpatrol)
  end

  test "should destroy vacationpatrol" do
    assert_difference('Vacationpatrol.count', -1) do
      delete vacationpatrol_url(@vacationpatrol)
    end

    assert_redirected_to vacationpatrols_url
  end
end
