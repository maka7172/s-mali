class MembershipCustomersController < ApplicationController
  before_action :set_membership_customer, only: [:show, :edit, :update, :destroy]

  # GET /membership_customers
  # GET /membership_customers.json
  def index
    @membership_customers = MembershipCustomer.all
  end

  # GET /membership_customers/1
  # GET /membership_customers/1.json
  def show
  end

  # GET /membership_customers/new
  def new
    @membership_customer = MembershipCustomer.new
  end

  # GET /membership_customers/1/edit
  def edit
  end

  # POST /membership_customers
  # POST /membership_customers.json
  def create
    @membership_customer = MembershipCustomer.new(membership_customer_params)

    respond_to do |format|
      if @membership_customer.save
        format.html { redirect_to @membership_customer, notice: 'Membership customer was successfully created.' }
        format.json { render :show, status: :created, location: @membership_customer }
      else
        format.html { render :new }
        format.json { render json: @membership_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /membership_customers/1
  # PATCH/PUT /membership_customers/1.json
  def update
    respond_to do |format|
      if @membership_customer.update(membership_customer_params)
        format.html { redirect_to @membership_customer, notice: 'Membership customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @membership_customer }
      else
        format.html { render :edit }
        format.json { render json: @membership_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /membership_customers/1
  # DELETE /membership_customers/1.json
  def destroy
    @membership_customer.destroy
    respond_to do |format|
      format.html { redirect_to membership_customers_url, notice: 'Membership customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_membership_customer
      @membership_customer = MembershipCustomer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def membership_customer_params
      params.require(:membership_customer).permit(:customer_id, :date, :sum)
    end
end
