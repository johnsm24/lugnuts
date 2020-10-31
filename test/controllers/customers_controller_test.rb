require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { addressLine1: @customer.addressLine1, addressLine2: @customer.addressLine2, city: @customer.city, contactFirstName: @customer.contactFirstName, contactLastName: @customer.contactLastName, country: @customer.country, creditLimit: @customer.creditLimit, customerName: @customer.customerName, phone: @customer.phone, postalCode: @customer.postalCode, salesRepEmployeeNumber: @customer.salesRepEmployeeNumber, state: @customer.state } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { addressLine1: @customer.addressLine1, addressLine2: @customer.addressLine2, city: @customer.city, contactFirstName: @customer.contactFirstName, contactLastName: @customer.contactLastName, country: @customer.country, creditLimit: @customer.creditLimit, customerName: @customer.customerName, phone: @customer.phone, postalCode: @customer.postalCode, salesRepEmployeeNumber: @customer.salesRepEmployeeNumber, state: @customer.state } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
