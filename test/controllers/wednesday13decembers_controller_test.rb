require "test_helper"

class Wednesday13decembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wednesday13december = wednesday13decembers(:one)
  end

  test "should get index" do
    get wednesday13decembers_url
    assert_response :success
  end

  test "should get new" do
    get new_wednesday13december_url
    assert_response :success
  end

  test "should create wednesday13december" do
    assert_difference("Wednesday13december.count") do
      post wednesday13decembers_url, params: { wednesday13december: { address: @wednesday13december.address, description: @wednesday13december.description, email: @wednesday13december.email, location: @wednesday13december.location, name: @wednesday13december.name, personaldata: @wednesday13december.personaldata, phone: @wednesday13december.phone, showemail: @wednesday13december.showemail, trade: @wednesday13december.trade } }
    end

    assert_redirected_to wednesday13december_url(Wednesday13december.last)
  end

  test "should show wednesday13december" do
    get wednesday13december_url(@wednesday13december)
    assert_response :success
  end

  test "should get edit" do
    get edit_wednesday13december_url(@wednesday13december)
    assert_response :success
  end

  test "should update wednesday13december" do
    patch wednesday13december_url(@wednesday13december), params: { wednesday13december: { address: @wednesday13december.address, description: @wednesday13december.description, email: @wednesday13december.email, location: @wednesday13december.location, name: @wednesday13december.name, personaldata: @wednesday13december.personaldata, phone: @wednesday13december.phone, showemail: @wednesday13december.showemail, trade: @wednesday13december.trade } }
    assert_redirected_to wednesday13december_url(@wednesday13december)
  end

  test "should destroy wednesday13december" do
    assert_difference("Wednesday13december.count", -1) do
      delete wednesday13december_url(@wednesday13december)
    end

    assert_redirected_to wednesday13decembers_url
  end
end
