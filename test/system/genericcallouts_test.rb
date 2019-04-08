require "application_system_test_case"

class GenericcalloutsTest < ApplicationSystemTestCase
  setup do
    @genericcallout = genericcallouts(:one)
  end

  test "visiting the index" do
    visit genericcallouts_url
    assert_selector "h1", text: "Genericcallouts"
  end

  test "creating a Genericcallout" do
    visit genericcallouts_url
    click_on "New Genericcallout"

    fill_in "Address", with: @genericcallout.address
    fill_in "Callback", with: @genericcallout.callback
    fill_in "Comment", with: @genericcallout.comment
    fill_in "Name", with: @genericcallout.name
    fill_in "Problem", with: @genericcallout.problem
    fill_in "Unitassigned", with: @genericcallout.unitassigned
    click_on "Create Genericcallout"

    assert_text "Genericcallout was successfully created"
    click_on "Back"
  end

  test "updating a Genericcallout" do
    visit genericcallouts_url
    click_on "Edit", match: :first

    fill_in "Address", with: @genericcallout.address
    fill_in "Callback", with: @genericcallout.callback
    fill_in "Comment", with: @genericcallout.comment
    fill_in "Name", with: @genericcallout.name
    fill_in "Problem", with: @genericcallout.problem
    fill_in "Unitassigned", with: @genericcallout.unitassigned
    click_on "Update Genericcallout"

    assert_text "Genericcallout was successfully updated"
    click_on "Back"
  end

  test "destroying a Genericcallout" do
    visit genericcallouts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Genericcallout was successfully destroyed"
  end
end
