require "application_system_test_case"

class Wednesday13decembersTest < ApplicationSystemTestCase
  setup do
    @wednesday13december = wednesday13decembers(:one)
  end

  test "visiting the index" do
    visit wednesday13decembers_url
    assert_selector "h1", text: "Wednesday13decembers"
  end

  test "should create wednesday13december" do
    visit wednesday13decembers_url
    click_on "New wednesday13december"

    fill_in "Address", with: @wednesday13december.address
    fill_in "Description", with: @wednesday13december.description
    fill_in "Email", with: @wednesday13december.email
    fill_in "Location", with: @wednesday13december.location
    fill_in "Name", with: @wednesday13december.name
    check "Personaldata" if @wednesday13december.personaldata
    fill_in "Phone", with: @wednesday13december.phone
    check "Showemail" if @wednesday13december.showemail
    fill_in "Trade", with: @wednesday13december.trade
    click_on "Create Wednesday13december"

    assert_text "Wednesday13december was successfully created"
    click_on "Back"
  end

  test "should update Wednesday13december" do
    visit wednesday13december_url(@wednesday13december)
    click_on "Edit this wednesday13december", match: :first

    fill_in "Address", with: @wednesday13december.address
    fill_in "Description", with: @wednesday13december.description
    fill_in "Email", with: @wednesday13december.email
    fill_in "Location", with: @wednesday13december.location
    fill_in "Name", with: @wednesday13december.name
    check "Personaldata" if @wednesday13december.personaldata
    fill_in "Phone", with: @wednesday13december.phone
    check "Showemail" if @wednesday13december.showemail
    fill_in "Trade", with: @wednesday13december.trade
    click_on "Update Wednesday13december"

    assert_text "Wednesday13december was successfully updated"
    click_on "Back"
  end

  test "should destroy Wednesday13december" do
    visit wednesday13december_url(@wednesday13december)
    click_on "Destroy this wednesday13december", match: :first

    assert_text "Wednesday13december was successfully destroyed"
  end
end
