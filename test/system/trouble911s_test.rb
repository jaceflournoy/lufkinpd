require "application_system_test_case"

class Trouble911sTest < ApplicationSystemTestCase
  setup do
    @trouble911 = trouble911s(:one)
  end

  test "visiting the index" do
    visit trouble911s_url
    assert_selector "h1", text: "Trouble911s"
  end

  test "creating a Trouble911" do
    visit trouble911s_url
    click_on "New Trouble911"

    fill_in "Extrainfo", with: @trouble911.extrainfo
    fill_in "Faxnumber", with: @trouble911.faxnumber
    fill_in "Phonenumber", with: @trouble911.phonenumber
    fill_in "Providername", with: @trouble911.providername
    click_on "Create Trouble911"

    assert_text "Trouble911 was successfully created"
    click_on "Back"
  end

  test "updating a Trouble911" do
    visit trouble911s_url
    click_on "Edit", match: :first

    fill_in "Extrainfo", with: @trouble911.extrainfo
    fill_in "Faxnumber", with: @trouble911.faxnumber
    fill_in "Phonenumber", with: @trouble911.phonenumber
    fill_in "Providername", with: @trouble911.providername
    click_on "Update Trouble911"

    assert_text "Trouble911 was successfully updated"
    click_on "Back"
  end

  test "destroying a Trouble911" do
    visit trouble911s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trouble911 was successfully destroyed"
  end
end
