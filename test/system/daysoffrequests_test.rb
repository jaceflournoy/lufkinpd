require "application_system_test_case"

class DaysoffrequestsTest < ApplicationSystemTestCase
  setup do
    @daysoffrequest = daysoffrequests(:one)
  end

  test "visiting the index" do
    visit daysoffrequests_url
    assert_selector "h1", text: "Daysoffrequests"
  end

  test "creating a Daysoffrequest" do
    visit daysoffrequests_url
    click_on "New Daysoffrequest"

    fill_in "Approved", with: @daysoffrequest.approved
    fill_in "Comment", with: @daysoffrequest.comment
    fill_in "Firstdayoff", with: @daysoffrequest.firstdayoff
    fill_in "Hoursrequested", with: @daysoffrequest.hoursrequested
    fill_in "Lastdayoff", with: @daysoffrequest.lastdayoff
    fill_in "Operatorname", with: @daysoffrequest.operatorname
    fill_in "Returndate", with: @daysoffrequest.returndate
    click_on "Create Daysoffrequest"

    assert_text "Daysoffrequest was successfully created"
    click_on "Back"
  end

  test "updating a Daysoffrequest" do
    visit daysoffrequests_url
    click_on "Edit", match: :first

    fill_in "Approved", with: @daysoffrequest.approved
    fill_in "Comment", with: @daysoffrequest.comment
    fill_in "Firstdayoff", with: @daysoffrequest.firstdayoff
    fill_in "Hoursrequested", with: @daysoffrequest.hoursrequested
    fill_in "Lastdayoff", with: @daysoffrequest.lastdayoff
    fill_in "Operatorname", with: @daysoffrequest.operatorname
    fill_in "Returndate", with: @daysoffrequest.returndate
    click_on "Update Daysoffrequest"

    assert_text "Daysoffrequest was successfully updated"
    click_on "Back"
  end

  test "destroying a Daysoffrequest" do
    visit daysoffrequests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daysoffrequest was successfully destroyed"
  end
end
