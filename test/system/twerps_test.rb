require "application_system_test_case"

class TwerpsTest < ApplicationSystemTestCase
  setup do
    @twerp = twerps(:one)
  end

  test "visiting the index" do
    visit twerps_url
    assert_selector "h1", text: "Twerps"
  end

  test "should create twerp" do
    visit twerps_url
    click_on "New twerp"

    fill_in "Content", with: @twerp.content
    fill_in "Name", with: @twerp.name
    click_on "Create Twerp"

    assert_text "Twerp was successfully created"
    click_on "Back"
  end

  test "should update Twerp" do
    visit twerp_url(@twerp)
    click_on "Edit this twerp", match: :first

    fill_in "Content", with: @twerp.content
    fill_in "Name", with: @twerp.name
    click_on "Update Twerp"

    assert_text "Twerp was successfully updated"
    click_on "Back"
  end

  test "should destroy Twerp" do
    visit twerp_url(@twerp)
    click_on "Destroy this twerp", match: :first

    assert_text "Twerp was successfully destroyed"
  end
end
