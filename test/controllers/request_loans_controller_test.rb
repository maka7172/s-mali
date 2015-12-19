require 'test_helper'

class RequestLoansControllerTest < ActionController::TestCase
  setup do
    @request_loan = request_loans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:request_loans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request_loan" do
    assert_difference('RequestLoan.count') do
      post :create, request_loan: { accepted: @request_loan.accepted, customer_id: @request_loan.customer_id, date: @request_loan.date, loan_percent: @request_loan.loan_percent, loan_sum: @request_loan.loan_sum }
    end

    assert_redirected_to request_loan_path(assigns(:request_loan))
  end

  test "should show request_loan" do
    get :show, id: @request_loan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request_loan
    assert_response :success
  end

  test "should update request_loan" do
    patch :update, id: @request_loan, request_loan: { accepted: @request_loan.accepted, customer_id: @request_loan.customer_id, date: @request_loan.date, loan_percent: @request_loan.loan_percent, loan_sum: @request_loan.loan_sum }
    assert_redirected_to request_loan_path(assigns(:request_loan))
  end

  test "should destroy request_loan" do
    assert_difference('RequestLoan.count', -1) do
      delete :destroy, id: @request_loan
    end

    assert_redirected_to request_loans_path
  end
end
