require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Msrp", with: @product.MSRP
    fill_in "Buyprice", with: @product.buyPrice
    fill_in "Productdescription", with: @product.productDescription
    fill_in "Productline", with: @product.productLine
    fill_in "Productname", with: @product.productName
    fill_in "Productscale", with: @product.productScale
    fill_in "Productvendor", with: @product.productVendor
    fill_in "Quantityinstock", with: @product.quantityInStock
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Msrp", with: @product.MSRP
    fill_in "Buyprice", with: @product.buyPrice
    fill_in "Productdescription", with: @product.productDescription
    fill_in "Productline", with: @product.productLine
    fill_in "Productname", with: @product.productName
    fill_in "Productscale", with: @product.productScale
    fill_in "Productvendor", with: @product.productVendor
    fill_in "Quantityinstock", with: @product.quantityInStock
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
