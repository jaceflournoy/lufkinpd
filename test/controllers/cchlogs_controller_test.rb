require 'test_helper'

class CchlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cchlog = cchlogs(:one)
  end

  test "should get index" do
    get cchlogs_url
    assert_response :success
  end

  test "should get new" do
    get new_cchlog_url
    assert_response :success
  end

  test "should create cchlog" do
    assert_difference('Cchlog.count') do
      post cchlogs_url, params: { cchlog: { comment: @cchlog.comment, dateofbirth: @cchlog.dateofbirth, disposition: @cchlog.disposition, dispositiondate: @cchlog.dispositiondate, idnum: @cchlog.idnum, name: @cchlog.name, officer: @cchlog.officer, operator: @cchlog.operator, reason: @cchlog.reason } }
    end

    assert_redirected_to cchlog_url(Cchlog.last)
  end

  test "should show cchlog" do
    get cchlog_url(@cchlog)
    assert_response :success
  end

  test "should get edit" do
    get edit_cchlog_url(@cchlog)
    assert_response :success
  end

  test "should update cchlog" do
    patch cchlog_url(@cchlog), params: { cchlog: { comment: @cchlog.comment, dateofbirth: @cchlog.dateofbirth, disposition: @cchlog.disposition, dispositiondate: @cchlog.dispositiondate, idnum: @cchlog.idnum, name: @cchlog.name, officer: @cchlog.officer, operator: @cchlog.operator, reason: @cchlog.reason } }
    assert_redirected_to cchlog_url(@cchlog)
  end

  test "should destroy cchlog" do
    assert_difference('Cchlog.count', -1) do
      delete cchlog_url(@cchlog)
    end

    assert_redirected_to cchlogs_url
  end
end
