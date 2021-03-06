require 'test_helper'

class PhonenumbersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phonenumber = phonenumbers(:one)
  end

  test "should get index" do
    get phonenumbers_url
    assert_response :success
  end

  test "should get new" do
    get new_phonenumber_url
    assert_response :success
  end

  test "should create phonenumber" do
    assert_difference('Phonenumber.count') do
      post phonenumbers_url, params: { phonenumber: { cell: @phonenumber.cell, home: @phonenumber.home, name: @phonenumber.name, office: @phonenumber.office, secondary_contact: @phonenumber.secondary_contact } }
    end

    assert_redirected_to phonenumber_url(Phonenumber.last)
  end

  test "should show phonenumber" do
    get phonenumber_url(@phonenumber)
    assert_response :success
  end

  test "should get edit" do
    get edit_phonenumber_url(@phonenumber)
    assert_response :success
  end

  test "should update phonenumber" do
    patch phonenumber_url(@phonenumber), params: { phonenumber: { cell: @phonenumber.cell, home: @phonenumber.home, name: @phonenumber.name, office: @phonenumber.office, secondary_contact: @phonenumber.secondary_contact } }
    assert_redirected_to phonenumber_url(@phonenumber)
  end

  test "should destroy phonenumber" do
    assert_difference('Phonenumber.count', -1) do
      delete phonenumber_url(@phonenumber)
    end

    assert_redirected_to phonenumbers_url
  end
end
