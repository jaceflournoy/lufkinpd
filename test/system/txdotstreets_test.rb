require "application_system_test_case"

class TxdotstreetsTest < ApplicationSystemTestCase
  setup do
    @txdotstreet = txdotstreets(:one)
  end

  test "visiting the index" do
    visit txdotstreets_url
    assert_selector "h1", text: "Txdotstreets"
  end

  test "creating a Txdotstreet" do
    visit txdotstreets_url
    click_on "New Txdotstreet"

    fill_in "Callback", with: @txdotstreet.callback
    fill_in "City", with: @txdotstreet.city
    fill_in "Comment", with: @txdotstreet.comment
    fill_in "Intersection", with: @txdotstreet.intersection
    fill_in "Name", with: @txdotstreet.name
    fill_in "Needed", with: @txdotstreet.needed
    fill_in "Problem", with: @txdotstreet.problem
    fill_in "State", with: @txdotstreet.state
    fill_in "Unitassigned", with: @txdotstreet.unitassigned
    click_on "Create Txdotstreet"

    assert_text "Txdotstreet was successfully created"
    click_on "Back"
  end

  test "updating a Txdotstreet" do
    visit txdotstreets_url
    click_on "Edit", match: :first

    fill_in "Callback", with: @txdotstreet.callback
    fill_in "City", with: @txdotstreet.city
    fill_in "Comment", with: @txdotstreet.comment
    fill_in "Intersection", with: @txdotstreet.intersection
    fill_in "Name", with: @txdotstreet.name
    fill_in "Needed", with: @txdotstreet.needed
    fill_in "Problem", with: @txdotstreet.problem
    fill_in "State", with: @txdotstreet.state
    fill_in "Unitassigned", with: @txdotstreet.unitassigned
    click_on "Update Txdotstreet"

    assert_text "Txdotstreet was successfully updated"
    click_on "Back"
  end

  test "destroying a Txdotstreet" do
    visit txdotstreets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Txdotstreet was successfully destroyed"
  end
end
