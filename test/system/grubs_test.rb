require "application_system_test_case"

class GrubsTest < ApplicationSystemTestCase
  setup do
    @grub = grubs(:one)
  end

  test "visiting the index" do
    visit grubs_url
    assert_selector "h1", text: "Grubs"
  end

  test "should create grub" do
    visit grubs_url
    click_on "New grub"

    fill_in "Calories", with: @grub.calories
    fill_in "Cuisine", with: @grub.cuisine
    fill_in "Name", with: @grub.name
    fill_in "Price", with: @grub.price
    click_on "Create Grub"

    assert_text "Grub was successfully created"
    click_on "Back"
  end

  test "should update Grub" do
    visit grub_url(@grub)
    click_on "Edit this grub", match: :first

    fill_in "Calories", with: @grub.calories
    fill_in "Cuisine", with: @grub.cuisine
    fill_in "Name", with: @grub.name
    fill_in "Price", with: @grub.price
    click_on "Update Grub"

    assert_text "Grub was successfully updated"
    click_on "Back"
  end

  test "should destroy Grub" do
    visit grub_url(@grub)
    click_on "Destroy this grub", match: :first

    assert_text "Grub was successfully destroyed"
  end
end
