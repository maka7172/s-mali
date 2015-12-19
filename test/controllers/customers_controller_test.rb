require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { email: @customer.email, family: @customer.family, father_name: @customer.father_name, inmate: @customer.inmate, job: @customer.job, name: @customer.name, phon: @customer.phon, s_m: @customer.s_m, s_s: @customer.s_s, sexuality: @customer.sexuality, tell: @customer.tell }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { email: @customer.email, family: @customer.family, father_name: @customer.father_name, inmate: @customer.inmate, job: @customer.job, name: @customer.name, phon: @customer.phon, s_m: @customer.s_m, s_s: @customer.s_s, sexuality: @customer.sexuality, tell: @customer.tell }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
