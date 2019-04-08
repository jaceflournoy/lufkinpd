require "application_system_test_case"

class TxdotlightsTest < ApplicationSystemTestCase
  setup do
    @txdotlight = txdotlights(:one)
  end

  test "visiting the index" do
    visit txdotlights_url
    assert_selector "h1", text: "Txdotlights"
  end

  test "creating a Txdotlight" do
    visit txdotlights_url
    click_on "New Txdotlight"

    fill_in "Callback", with: @txdotlight.callback
    fill_in "City", with: @txdotlight.city
    fill_in "Comment", with: @txdotlight.comment
    fill_in "Intersection", with: @txdotlight.intersection
    fill_in "Lightout", with: @txdotlight.lightout
    fill_in "Lightred", with: @txdotlight.lightred
    fill_in "Name", with: @txdotlight.name
    fill_in "Problem", with: @txdotlight.problem
    fill_in "State", with: @txdotlight.state
    fill_in "Unitassigned", with: @txdotlight.unitassigned
    click_on "Create Txdotlight"

    assert_text "Txdotlight was successfully created"
    click_on "Back"
  end

  test "updating a Txdotlight" do
    visit txdotlights_url
    click_on "Edit", match: :first

    fill_in "Callback", with: @txdotlight.callback
    fill_in "City", with: @txdotlight.city
    fill_in "Comment", with: @txdotlight.comment
    fill_in "Intersection", with: @txdotlight.intersection
    fill_in "Lightout", with: @txdotlight.lightout
    fill_in "Lightred", with: @txdotlight.lightred
    fill_in "Name", with: @txdotlight.name
    fill_in "Problem", with: @txdotlight.problem
    fill_in "State", with: @txdotlight.state
    fill_in "Unitassigned", with: @txdotlight.unitassigned
    click_on "Update Txdotlight"

    assert_text "Txdotlight was successfully updated"
    click_on "Back"
  end

  test "destroying a Txdotlight" do
    visit txdotlights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Txdotlight was successfully destroyed"
  end
end
