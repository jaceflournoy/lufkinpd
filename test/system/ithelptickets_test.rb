require "application_system_test_case"

class IthelpticketsTest < ApplicationSystemTestCase
  setup do
    @ithelpticket = ithelptickets(:one)
  end

  test "visiting the index" do
    visit ithelptickets_url
    assert_selector "h1", text: "Ithelptickets"
  end

  test "creating a Ithelpticket" do
    visit ithelptickets_url
    click_on "New Ithelpticket"

    fill_in "Name", with: @ithelpticket.name
    fill_in "Problem", with: @ithelpticket.problem
    fill_in "Unit", with: @ithelpticket.unit
    click_on "Create Ithelpticket"

    assert_text "Ithelpticket was successfully created"
    click_on "Back"
  end

  test "updating a Ithelpticket" do
    visit ithelptickets_url
    click_on "Edit", match: :first

    fill_in "Name", with: @ithelpticket.name
    fill_in "Problem", with: @ithelpticket.problem
    fill_in "Unit", with: @ithelpticket.unit
    click_on "Update Ithelpticket"

    assert_text "Ithelpticket was successfully updated"
    click_on "Back"
  end

  test "destroying a Ithelpticket" do
    visit ithelptickets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ithelpticket was successfully destroyed"
  end
end
