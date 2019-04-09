require "application_system_test_case"

class GeoreportsTest < ApplicationSystemTestCase
  setup do
    @georeport = georeports(:one)
  end

  test "visiting the index" do
    visit georeports_url
    assert_selector "h1", text: "Georeports"
  end

  test "creating a Georeport" do
    visit georeports_url
    click_on "New Georeport"

    fill_in "Biznamechange", with: @georeport.biznamechange
    fill_in "Changeaddrto", with: @georeport.changeaddrto
    fill_in "Comment", with: @georeport.comment
    fill_in "Name1", with: @georeport.name1
    fill_in "Name2", with: @georeport.name2
    fill_in "Name3", with: @georeport.name3
    fill_in "Phone1", with: @georeport.phone1
    fill_in "Phone2", with: @georeport.phone2
    fill_in "Phone3", with: @georeport.phone3
    fill_in "Presentaddress", with: @georeport.presentaddress
    fill_in "Reportedby", with: @georeport.reportedby
    click_on "Create Georeport"

    assert_text "Georeport was successfully created"
    click_on "Back"
  end

  test "updating a Georeport" do
    visit georeports_url
    click_on "Edit", match: :first

    fill_in "Biznamechange", with: @georeport.biznamechange
    fill_in "Changeaddrto", with: @georeport.changeaddrto
    fill_in "Comment", with: @georeport.comment
    fill_in "Name1", with: @georeport.name1
    fill_in "Name2", with: @georeport.name2
    fill_in "Name3", with: @georeport.name3
    fill_in "Phone1", with: @georeport.phone1
    fill_in "Phone2", with: @georeport.phone2
    fill_in "Phone3", with: @georeport.phone3
    fill_in "Presentaddress", with: @georeport.presentaddress
    fill_in "Reportedby", with: @georeport.reportedby
    click_on "Update Georeport"

    assert_text "Georeport was successfully updated"
    click_on "Back"
  end

  test "destroying a Georeport" do
    visit georeports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Georeport was successfully destroyed"
  end
end
