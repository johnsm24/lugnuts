require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Addressline1", with: @customer.addressLine1
    fill_in "Addressline2", with: @customer.addressLine2
    fill_in "City", with: @customer.city
    fill_in "Contactfirstname", with: @customer.contactFirstName
    fill_in "Contactlastname", with: @customer.contactLastName
    fill_in "Country", with: @customer.country
    fill_in "Creditlimit", with: @customer.creditLimit
    fill_in "Customername", with: @customer.customerName
    fill_in "Phone", with: @customer.phone
    fill_in "Postalcode", with: @customer.postalCode
    fill_in "Salesrepemployeenumber", with: @customer.salesRepEmployeeNumber
    fill_in "State", with: @customer.state
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Addressline1", with: @customer.addressLine1
    fill_in "Addressline2", with: @customer.addressLine2
    fill_in "City", with: @customer.city
    fill_in "Contactfirstname", with: @customer.contactFirstName
    fill_in "Contactlastname", with: @customer.contactLastName
    fill_in "Country", with: @customer.country
    fill_in "Creditlimit", with: @customer.creditLimit
    fill_in "Customername", with: @customer.customerName
    fill_in "Phone", with: @customer.phone
    fill_in "Postalcode", with: @customer.postalCode
    fill_in "Salesrepemployeenumber", with: @customer.salesRepEmployeeNumber
    fill_in "State", with: @customer.state
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
