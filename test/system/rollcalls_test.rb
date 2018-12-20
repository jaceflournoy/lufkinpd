require "application_system_test_case"

class RollcallsTest < ApplicationSystemTestCase
  setup do
    @rollcall = rollcalls(:one)
  end

  test "visiting the index" do
    visit rollcalls_url
    assert_selector "h1", text: "Rollcalls"
  end

  test "creating a Rollcall" do
    visit rollcalls_url
    click_on "New Rollcall"

    fill_in "Description", with: @rollcall.description
    fill_in "Radionum", with: @rollcall.radionum
    fill_in "Title", with: @rollcall.title
    click_on "Create Rollcall"

    assert_text "Rollcall was successfully created"
    click_on "Back"
  end

  test "updating a Rollcall" do
    visit rollcalls_url
    click_on "Edit", match: :first

    fill_in "Description", with: @rollcall.description
    fill_in "Radionum", with: @rollcall.radionum
    fill_in "Title", with: @rollcall.title
    click_on "Update Rollcall"

    assert_text "Rollcall was successfully updated"
    click_on "Back"
  end

  test "destroying a Rollcall" do
    visit rollcalls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rollcall was successfully destroyed"
  end
end
