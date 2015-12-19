class RequestLoansController < ApplicationController
  before_action :set_request_loan, only: [:show, :edit, :update, :destroy]

  # GET /request_loans
  # GET /request_loans.json
  def index
    @request_loans = RequestLoan.all

  end

  # GET /request_loans/1
  # GET /request_loans/1.json
  def show
    @usance_payment = UsancePayment.where("payoff = ? AND request_loan_id = ?" ,false , params[:id]).first

  end

  # GET /request_loans/new
  def new
    @request_loan = RequestLoan.new
  end

  # GET /request_loans/1/edit
  def edit
  end

  # POST /request_loans
  # POST /request_loans.json
  def create
    @request_loan = RequestLoan.new(request_loan_params)

    respond_to do |format|
      if @request_loan.save
        format.html { redirect_to @request_loan, notice: 'Request loan was successfully created.' }
        format.json { render :show, status: :created, location: @request_loan }
        date = (Date.today)
        payment = (@request_loan.loan_sum)+((@request_loan.loan_sum) * (@request_loan.loan_percent))/24
        if @request_loan.accepted
          for i in 1..24
             i +=1
          date += 1.month
          UsancePayment.create(peyment: payment,date: date,request_loan_id: @request_loan.id,customer_id: @request_loan.customer_id,payoff:'false')
          end
        end
      else
        format.html { render :new }
        format.json { render json: @request_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_loans/1
  # PATCH/PUT /request_loans/1.json
  def update
    respond_to do |format|
      if @request_loan.update(request_loan_params)
        format.html { redirect_to @request_loan, notice: 'Request loan was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_loan }
      else
        format.html { render :edit }
        format.json { render json: @request_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_loans/1
  # DELETE /request_loans/1.json
  def destroy
    @request_loan.destroy
    respond_to do |format|
      format.html { redirect_to request_loans_url, notice: 'Request loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_loan
      @request_loan = RequestLoan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_loan_params
      params.require(:request_loan).permit(:customer_id, :date, :loan_sum, :accepted, :loan_percent)
    end
end
