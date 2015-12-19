require 'test_helper'

class MembershipCustomersControllerTest < ActionController::TestCase
  setup do
    @membership_customer = membership_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:membership_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create membership_customer" do
    assert_difference('MembershipCustomer.count') do
      post :create, membership_customer: { customer_id: @membership_customer.customer_id, date: @membership_customer.date, sum: @membership_customer.sum }
    end

    assert_redirected_to membership_customer_path(assigns(:membership_customer))
  end

  test "should show membership_customer" do
    get :show, id: @membership_customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @membership_customer
    assert_response :success
  end

  test "should update membership_customer" do
    patch :update, id: @membership_customer, membership_customer: { customer_id: @membership_customer.customer_id, date: @membership_customer.date, sum: @membership_customer.sum }
    assert_redirected_to membership_customer_path(assigns(:membership_customer))
  end

  test "should destroy membership_customer" do
    assert_difference('MembershipCustomer.count', -1) do
      delete :destroy, id: @membership_customer
    end

    assert_redirected_to membership_customers_path
  end
end
