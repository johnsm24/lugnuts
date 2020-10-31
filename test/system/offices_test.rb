require "application_system_test_case"

class OfficesTest < ApplicationSystemTestCase
  setup do
    @office = offices(:one)
  end

  test "visiting the index" do
    visit offices_url
    assert_selector "h1", text: "Offices"
  end

  test "creating a Office" do
    visit offices_url
    click_on "New Office"

    fill_in "Addressline1", with: @office.addressLine1
    fill_in "Addressline2", with: @office.addressLine2
    fill_in "City", with: @office.city
    fill_in "Country", with: @office.country
    fill_in "Phone", with: @office.phone
    fill_in "Postalcode", with: @office.postalCode
    fill_in "State", with: @office.state
    fill_in "Territory", with: @office.territory
    click_on "Create Office"

    assert_text "Office was successfully created"
    click_on "Back"
  end

  test "updating a Office" do
    visit offices_url
    click_on "Edit", match: :first

    fill_in "Addressline1", with: @office.addressLine1
    fill_in "Addressline2", with: @office.addressLine2
    fill_in "City", with: @office.city
    fill_in "Country", with: @office.country
    fill_in "Phone", with: @office.phone
    fill_in "Postalcode", with: @office.postalCode
    fill_in "State", with: @office.state
    fill_in "Territory", with: @office.territory
    click_on "Update Office"

    assert_text "Office was successfully updated"
    click_on "Back"
  end

  test "destroying a Office" do
    visit offices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Office was successfully destroyed"
  end
end
