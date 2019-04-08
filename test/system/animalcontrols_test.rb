require "application_system_test_case"

class AnimalcontrolsTest < ApplicationSystemTestCase
  setup do
    @animalcontrol = animalcontrols(:one)
  end

  test "visiting the index" do
    visit animalcontrols_url
    assert_selector "h1", text: "Animalcontrols"
  end

  test "creating a Animalcontrol" do
    visit animalcontrols_url
    click_on "New Animalcontrol"

    fill_in "Address", with: @animalcontrol.address
    fill_in "Callback", with: @animalcontrol.callback
    fill_in "Comment", with: @animalcontrol.comment
    fill_in "Name", with: @animalcontrol.name
    fill_in "Problem", with: @animalcontrol.problem
    fill_in "Unitassigned", with: @animalcontrol.unitassigned
    click_on "Create Animalcontrol"

    assert_text "Animalcontrol was successfully created"
    click_on "Back"
  end

  test "updating a Animalcontrol" do
    visit animalcontrols_url
    click_on "Edit", match: :first

    fill_in "Address", with: @animalcontrol.address
    fill_in "Callback", with: @animalcontrol.callback
    fill_in "Comment", with: @animalcontrol.comment
    fill_in "Name", with: @animalcontrol.name
    fill_in "Problem", with: @animalcontrol.problem
    fill_in "Unitassigned", with: @animalcontrol.unitassigned
    click_on "Update Animalcontrol"

    assert_text "Animalcontrol was successfully updated"
    click_on "Back"
  end

  test "destroying a Animalcontrol" do
    visit animalcontrols_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animalcontrol was successfully destroyed"
  end
end
