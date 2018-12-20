require "application_system_test_case"

class PhonenumbersTest < ApplicationSystemTestCase
  setup do
    @phonenumber = phonenumbers(:one)
  end

  test "visiting the index" do
    visit phonenumbers_url
    assert_selector "h1", text: "Phonenumbers"
  end

  test "creating a Phonenumber" do
    visit phonenumbers_url
    click_on "New Phonenumber"

    fill_in "Cell", with: @phonenumber.cell
    fill_in "Home", with: @phonenumber.home
    fill_in "Name", with: @phonenumber.name
    fill_in "Office", with: @phonenumber.office
    fill_in "Secondary contact", with: @phonenumber.secondary_contact
    click_on "Create Phonenumber"

    assert_text "Phonenumber was successfully created"
    click_on "Back"
  end

  test "updating a Phonenumber" do
    visit phonenumbers_url
    click_on "Edit", match: :first

    fill_in "Cell", with: @phonenumber.cell
    fill_in "Home", with: @phonenumber.home
    fill_in "Name", with: @phonenumber.name
    fill_in "Office", with: @phonenumber.office
    fill_in "Secondary contact", with: @phonenumber.secondary_contact
    click_on "Update Phonenumber"

    assert_text "Phonenumber was successfully updated"
    click_on "Back"
  end

  test "destroying a Phonenumber" do
    visit phonenumbers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phonenumber was successfully destroyed"
  end
end
