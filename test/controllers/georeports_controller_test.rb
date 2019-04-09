require 'test_helper'

class GeoreportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @georeport = georeports(:one)
  end

  test "should get index" do
    get georeports_url
    assert_response :success
  end

  test "should get new" do
    get new_georeport_url
    assert_response :success
  end

  test "should create georeport" do
    assert_difference('Georeport.count') do
      post georeports_url, params: { georeport: { biznamechange: @georeport.biznamechange, changeaddrto: @georeport.changeaddrto, comment: @georeport.comment, name1: @georeport.name1, name2: @georeport.name2, name3: @georeport.name3, phone1: @georeport.phone1, phone2: @georeport.phone2, phone3: @georeport.phone3, presentaddress: @georeport.presentaddress, reportedby: @georeport.reportedby } }
    end

    assert_redirected_to georeport_url(Georeport.last)
  end

  test "should show georeport" do
    get georeport_url(@georeport)
    assert_response :success
  end

  test "should get edit" do
    get edit_georeport_url(@georeport)
    assert_response :success
  end

  test "should update georeport" do
    patch georeport_url(@georeport), params: { georeport: { biznamechange: @georeport.biznamechange, changeaddrto: @georeport.changeaddrto, comment: @georeport.comment, name1: @georeport.name1, name2: @georeport.name2, name3: @georeport.name3, phone1: @georeport.phone1, phone2: @georeport.phone2, phone3: @georeport.phone3, presentaddress: @georeport.presentaddress, reportedby: @georeport.reportedby } }
    assert_redirected_to georeport_url(@georeport)
  end

  test "should destroy georeport" do
    assert_difference('Georeport.count', -1) do
      delete georeport_url(@georeport)
    end

    assert_redirected_to georeports_url
  end
end
