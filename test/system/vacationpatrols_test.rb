require "application_system_test_case"

class VacationpatrolsTest < ApplicationSystemTestCase
  setup do
    @vacationpatrol = vacationpatrols(:one)
  end

  test "visiting the index" do
    visit vacationpatrols_url
    assert_selector "h1", text: "Vacationpatrols"
  end

  test "creating a Vacationpatrol" do
    visit vacationpatrols_url
    click_on "New Vacationpatrol"

    fill_in "Comment", with: @vacationpatrol.comment
    fill_in "Officer", with: @vacationpatrol.officer
    click_on "Create Vacationpatrol"

    assert_text "Vacationpatrol was successfully created"
    click_on "Back"
  end

  test "updating a Vacationpatrol" do
    visit vacationpatrols_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @vacationpatrol.comment
    fill_in "Officer", with: @vacationpatrol.officer
    click_on "Update Vacationpatrol"

    assert_text "Vacationpatrol was successfully updated"
    click_on "Back"
  end

  test "destroying a Vacationpatrol" do
    visit vacationpatrols_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vacationpatrol was successfully destroyed"
  end
end
