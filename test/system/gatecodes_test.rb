require "application_system_test_case"

class GatecodesTest < ApplicationSystemTestCase
  setup do
    @gatecode = gatecodes(:one)
  end

  test "visiting the index" do
    visit gatecodes_url
    assert_selector "h1", text: "Gatecodes"
  end

  test "creating a Gatecode" do
    visit gatecodes_url
    click_on "New Gatecode"

    fill_in "Code", with: @gatecode.code
    fill_in "Location", with: @gatecode.location
    click_on "Create Gatecode"

    assert_text "Gatecode was successfully created"
    click_on "Back"
  end

  test "updating a Gatecode" do
    visit gatecodes_url
    click_on "Edit", match: :first

    fill_in "Code", with: @gatecode.code
    fill_in "Location", with: @gatecode.location
    click_on "Update Gatecode"

    assert_text "Gatecode was successfully updated"
    click_on "Back"
  end

  test "destroying a Gatecode" do
    visit gatecodes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gatecode was successfully destroyed"
  end
end
