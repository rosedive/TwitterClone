require "application_system_test_case"

class TwitttersTest < ApplicationSystemTestCase
  setup do
    @twittter = twittters(:one)
  end

  test "visiting the index" do
    visit twittters_url
    assert_selector "h1", text: "Twittters"
  end

  test "creating a Twittter" do
    visit twittters_url
    click_on "New Twittter"

    fill_in "Content", with: @twittter.content
    click_on "Create Twittter"

    assert_text "Twittter was successfully created"
    click_on "Back"
  end

  test "updating a Twittter" do
    visit twittters_url
    click_on "Edit", match: :first

    fill_in "Content", with: @twittter.content
    click_on "Update Twittter"

    assert_text "Twittter was successfully updated"
    click_on "Back"
  end

  test "destroying a Twittter" do
    visit twittters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Twittter was successfully destroyed"
  end
end
