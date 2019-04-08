require "application_system_test_case"

class CitystreetsTest < ApplicationSystemTestCase
  setup do
    @citystreet = citystreets(:one)
  end

  test "visiting the index" do
    visit citystreets_url
    assert_selector "h1", text: "Citystreets"
  end

  test "creating a Citystreet" do
    visit citystreets_url
    click_on "New Citystreet"

    fill_in "Address", with: @citystreet.address
    fill_in "Callback", with: @citystreet.callback
    fill_in "City", with: @citystreet.city
    fill_in "Closestintersection", with: @citystreet.closestintersection
    fill_in "Comment", with: @citystreet.comment
    fill_in "Lightout", with: @citystreet.lightout
    fill_in "Lightred", with: @citystreet.lightred
    fill_in "Name", with: @citystreet.name
    fill_in "Needed", with: @citystreet.needed
    fill_in "Problem", with: @citystreet.problem
    fill_in "Roadhazard", with: @citystreet.roadhazard
    fill_in "State", with: @citystreet.state
    fill_in "Unitassigned", with: @citystreet.unitassigned
    click_on "Create Citystreet"

    assert_text "Citystreet was successfully created"
    click_on "Back"
  end

  test "updating a Citystreet" do
    visit citystreets_url
    click_on "Edit", match: :first

    fill_in "Address", with: @citystreet.address
    fill_in "Callback", with: @citystreet.callback
    fill_in "City", with: @citystreet.city
    fill_in "Closestintersection", with: @citystreet.closestintersection
    fill_in "Comment", with: @citystreet.comment
    fill_in "Lightout", with: @citystreet.lightout
    fill_in "Lightred", with: @citystreet.lightred
    fill_in "Name", with: @citystreet.name
    fill_in "Needed", with: @citystreet.needed
    fill_in "Problem", with: @citystreet.problem
    fill_in "Roadhazard", with: @citystreet.roadhazard
    fill_in "State", with: @citystreet.state
    fill_in "Unitassigned", with: @citystreet.unitassigned
    click_on "Update Citystreet"

    assert_text "Citystreet was successfully updated"
    click_on "Back"
  end

  test "destroying a Citystreet" do
    visit citystreets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Citystreet was successfully destroyed"
  end
end
