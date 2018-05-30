require "application_system_test_case"

class PageTwosTest < ApplicationSystemTestCase
  setup do
    @page_two = page_twos(:one)
  end

  test "visiting the index" do
    visit page_twos_url
    assert_selector "h1", text: "Page Twos"
  end

  test "creating a Page two" do
    visit page_twos_url
    click_on "New Page Two"

    click_on "Create Page two"

    assert_text "Page two was successfully created"
    click_on "Back"
  end

  test "updating a Page two" do
    visit page_twos_url
    click_on "Edit", match: :first

    click_on "Update Page two"

    assert_text "Page two was successfully updated"
    click_on "Back"
  end

  test "destroying a Page two" do
    visit page_twos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Page two was successfully destroyed"
  end
end
