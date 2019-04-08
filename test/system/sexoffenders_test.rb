require "application_system_test_case"

class SexoffendersTest < ApplicationSystemTestCase
  setup do
    @sexoffender = sexoffenders(:one)
  end

  test "visiting the index" do
    visit sexoffenders_url
    assert_selector "h1", text: "Sexoffenders"
  end

  test "creating a Sexoffender" do
    visit sexoffenders_url
    click_on "New Sexoffender"

    fill_in "Address", with: @sexoffender.address
    fill_in "Name", with: @sexoffender.name
    fill_in "Offense", with: @sexoffender.offense
    fill_in "Officer", with: @sexoffender.officer
    fill_in "Risklevel", with: @sexoffender.risklevel
    click_on "Create Sexoffender"

    assert_text "Sexoffender was successfully created"
    click_on "Back"
  end

  test "updating a Sexoffender" do
    visit sexoffenders_url
    click_on "Edit", match: :first

    fill_in "Address", with: @sexoffender.address
    fill_in "Name", with: @sexoffender.name
    fill_in "Offense", with: @sexoffender.offense
    fill_in "Officer", with: @sexoffender.officer
    fill_in "Risklevel", with: @sexoffender.risklevel
    click_on "Update Sexoffender"

    assert_text "Sexoffender was successfully updated"
    click_on "Back"
  end

  test "destroying a Sexoffender" do
    visit sexoffenders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sexoffender was successfully destroyed"
  end
end
