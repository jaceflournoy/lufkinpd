require 'test_helper'

class Trouble911sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trouble911 = trouble911s(:one)
  end

  test "should get index" do
    get trouble911s_url
    assert_response :success
  end

  test "should get new" do
    get new_trouble911_url
    assert_response :success
  end

  test "should create trouble911" do
    assert_difference('Trouble911.count') do
      post trouble911s_url, params: { trouble911: { extrainfo: @trouble911.extrainfo, faxnumber: @trouble911.faxnumber, phonenumber: @trouble911.phonenumber, providername: @trouble911.providername } }
    end

    assert_redirected_to trouble911_url(Trouble911.last)
  end

  test "should show trouble911" do
    get trouble911_url(@trouble911)
    assert_response :success
  end

  test "should get edit" do
    get edit_trouble911_url(@trouble911)
    assert_response :success
  end

  test "should update trouble911" do
    patch trouble911_url(@trouble911), params: { trouble911: { extrainfo: @trouble911.extrainfo, faxnumber: @trouble911.faxnumber, phonenumber: @trouble911.phonenumber, providername: @trouble911.providername } }
    assert_redirected_to trouble911_url(@trouble911)
  end

  test "should destroy trouble911" do
    assert_difference('Trouble911.count', -1) do
      delete trouble911_url(@trouble911)
    end

    assert_redirected_to trouble911s_url
  end
end
