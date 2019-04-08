require "application_system_test_case"

class WatersewersTest < ApplicationSystemTestCase
  setup do
    @watersewer = watersewers(:one)
  end

  test "visiting the index" do
    visit watersewers_url
    assert_selector "h1", text: "Watersewers"
  end

  test "creating a Watersewer" do
    visit watersewers_url
    click_on "New Watersewer"

    fill_in "Address", with: @watersewer.address
    fill_in "Callback", with: @watersewer.callback
    fill_in "Cityleak", with: @watersewer.cityleak
    fill_in "Comment", with: @watersewer.comment
    fill_in "Name", with: @watersewer.name
    fill_in "Noleak", with: @watersewer.noleak
    fill_in "Privateleak", with: @watersewer.privateleak
    fill_in "Problem", with: @watersewer.problem
    fill_in "Unitassigned", with: @watersewer.unitassigned
    fill_in "Wateroff", with: @watersewer.wateroff
    click_on "Create Watersewer"

    assert_text "Watersewer was successfully created"
    click_on "Back"
  end

  test "updating a Watersewer" do
    visit watersewers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @watersewer.address
    fill_in "Callback", with: @watersewer.callback
    fill_in "Cityleak", with: @watersewer.cityleak
    fill_in "Comment", with: @watersewer.comment
    fill_in "Name", with: @watersewer.name
    fill_in "Noleak", with: @watersewer.noleak
    fill_in "Privateleak", with: @watersewer.privateleak
    fill_in "Problem", with: @watersewer.problem
    fill_in "Unitassigned", with: @watersewer.unitassigned
    fill_in "Wateroff", with: @watersewer.wateroff
    click_on "Update Watersewer"

    assert_text "Watersewer was successfully updated"
    click_on "Back"
  end

  test "destroying a Watersewer" do
    visit watersewers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Watersewer was successfully destroyed"
  end
end
