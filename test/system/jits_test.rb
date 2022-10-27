require "application_system_test_case"

class JitsTest < ApplicationSystemTestCase
  setup do
    @jit = jits(:one)
  end

  test "visiting the index" do
    visit jits_url
    assert_selector "h1", text: "Jits"
  end

  test "should create jit" do
    visit jits_url
    click_on "New jit"

    fill_in "Content", with: @jit.content
    fill_in "User", with: @jit.user_id
    click_on "Create Jit"

    assert_text "Jit was successfully created"
    click_on "Back"
  end

  test "should update Jit" do
    visit jit_url(@jit)
    click_on "Edit this jit", match: :first

    fill_in "Content", with: @jit.content
    fill_in "User", with: @jit.user_id
    click_on "Update Jit"

    assert_text "Jit was successfully updated"
    click_on "Back"
  end

  test "should destroy Jit" do
    visit jit_url(@jit)
    click_on "Destroy this jit", match: :first

    assert_text "Jit was successfully destroyed"
  end
end
