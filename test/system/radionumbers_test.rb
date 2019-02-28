require "application_system_test_case"

class RadionumbersTest < ApplicationSystemTestCase
  setup do
    @radionumber = radionumbers(:one)
  end

  test "visiting the index" do
    visit radionumbers_url
    assert_selector "h1", text: "Radionumbers"
  end

  test "creating a Radionumber" do
    visit radionumbers_url
    click_on "New Radionumber"

    fill_in "Extrainfo", with: @radionumber.extrainfo
    fill_in "Officer", with: @radionumber.officer
    fill_in "Radionumber", with: @radionumber.radionumber
    click_on "Create Radionumber"

    assert_text "Radionumber was successfully created"
    click_on "Back"
  end

  test "updating a Radionumber" do
    visit radionumbers_url
    click_on "Edit", match: :first

    fill_in "Extrainfo", with: @radionumber.extrainfo
    fill_in "Officer", with: @radionumber.officer
    fill_in "Radionumber", with: @radionumber.radionumber
    click_on "Update Radionumber"

    assert_text "Radionumber was successfully updated"
    click_on "Back"
  end

  test "destroying a Radionumber" do
    visit radionumbers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Radionumber was successfully destroyed"
  end
end
