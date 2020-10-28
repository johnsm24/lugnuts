require 'test_helper'

class OfficesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @office = offices(:one)
  end

  test "should get index" do
    get offices_url
    assert_response :success
  end

  test "should get new" do
    get new_office_url
    assert_response :success
  end

  test "should create office" do
    assert_difference('Office.count') do
      post offices_url, params: { office: { addressLine1: @office.addressLine1, addressLine2: @office.addressLine2, city: @office.city, country: @office.country, phone: @office.phone, postalCode: @office.postalCode, state: @office.state, territory: @office.territory } }
    end

    assert_redirected_to office_url(Office.last)
  end

  test "should show office" do
    get office_url(@office)
    assert_response :success
  end

  test "should get edit" do
    get edit_office_url(@office)
    assert_response :success
  end

  test "should update office" do
    patch office_url(@office), params: { office: { addressLine1: @office.addressLine1, addressLine2: @office.addressLine2, city: @office.city, country: @office.country, phone: @office.phone, postalCode: @office.postalCode, state: @office.state, territory: @office.territory } }
    assert_redirected_to office_url(@office)
  end

  test "should destroy office" do
    assert_difference('Office.count', -1) do
      delete office_url(@office)
    end

    assert_redirected_to offices_url
  end
end
