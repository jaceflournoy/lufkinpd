require "application_system_test_case"

class FleetticketsTest < ApplicationSystemTestCase
  setup do
    @fleetticket = fleettickets(:one)
  end

  test "visiting the index" do
    visit fleettickets_url
    assert_selector "h1", text: "Fleettickets"
  end

  test "creating a Fleetticket" do
    visit fleettickets_url
    click_on "New Fleetticket"

    fill_in "Problem", with: @fleetticket.problem
    fill_in "Reportingofficer", with: @fleetticket.reportingofficer
    fill_in "Unitnumber", with: @fleetticket.unitnumber
    click_on "Create Fleetticket"

    assert_text "Fleetticket was successfully created"
    click_on "Back"
  end

  test "updating a Fleetticket" do
    visit fleettickets_url
    click_on "Edit", match: :first

    fill_in "Problem", with: @fleetticket.problem
    fill_in "Reportingofficer", with: @fleetticket.reportingofficer
    fill_in "Unitnumber", with: @fleetticket.unitnumber
    click_on "Update Fleetticket"

    assert_text "Fleetticket was successfully updated"
    click_on "Back"
  end

  test "destroying a Fleetticket" do
    visit fleettickets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fleetticket was successfully destroyed"
  end
end
