require "application_system_test_case"

class CchlogsTest < ApplicationSystemTestCase
  setup do
    @cchlog = cchlogs(:one)
  end

  test "visiting the index" do
    visit cchlogs_url
    assert_selector "h1", text: "Cchlogs"
  end

  test "creating a Cchlog" do
    visit cchlogs_url
    click_on "New Cchlog"

    fill_in "Comment", with: @cchlog.comment
    fill_in "Dateofbirth", with: @cchlog.dateofbirth
    fill_in "Disposition", with: @cchlog.disposition
    fill_in "Dispositiondate", with: @cchlog.dispositiondate
    fill_in "Idnum", with: @cchlog.idnum
    fill_in "Name", with: @cchlog.name
    fill_in "Officer", with: @cchlog.officer
    fill_in "Operator", with: @cchlog.operator
    fill_in "Reason", with: @cchlog.reason
    click_on "Create Cchlog"

    assert_text "Cchlog was successfully created"
    click_on "Back"
  end

  test "updating a Cchlog" do
    visit cchlogs_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @cchlog.comment
    fill_in "Dateofbirth", with: @cchlog.dateofbirth
    fill_in "Disposition", with: @cchlog.disposition
    fill_in "Dispositiondate", with: @cchlog.dispositiondate
    fill_in "Idnum", with: @cchlog.idnum
    fill_in "Name", with: @cchlog.name
    fill_in "Officer", with: @cchlog.officer
    fill_in "Operator", with: @cchlog.operator
    fill_in "Reason", with: @cchlog.reason
    click_on "Update Cchlog"

    assert_text "Cchlog was successfully updated"
    click_on "Back"
  end

  test "destroying a Cchlog" do
    visit cchlogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cchlog was successfully destroyed"
  end
end
