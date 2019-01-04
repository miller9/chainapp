class PaymentsController < ApplicationController
  # before_action :set_chain, only: [:show, :edit, :update, :destroy]

### https://www.toptal.com/ruby-on-rails/top-10-mistakes-that-rails-programmers-make  
### https://teamtreehouse.com/community/first-name-last-name-and-profile-name-not-saving-in-database
### https://apidock.com/rails/ActiveRecord/Base/save
###### ::ActiveRecord_Relation:
###### https://rubyplus.com/articles/3051-Chaining-ActiveRecord-Relation-Methods-in-Rails-5

  # GET /chains
  # GET /chains.json
  def index
    @payments = Payment.all
  end

# def create
#   @payment = Payment.new(params[:payment])
#   # if puts "OK"
#   # else
#     redirect_to :action => ‘new’
#   # end
# end

  # POST /payments
  # POST /payments.json
  def create
    @payment = Payment.new(payment_params)

    respond_to do |format|
      if @payment.save
        format.html { redirect_to @chain, notice: 'Chain and Payment was successfully created.' }
        format.json { render :show, status: :created, location: @chain }
      else
        format.html { render :new }
        format.json { render json: @chain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @chain, notice: 'Chain AND PAYMENT was successfully updated.' }
        format.json { render :show, status: :ok, location: @chain }
      else
        format.html { render :edit }
        format.json { render json: @chain.errors, status: :unprocessable_entity }
      end
    end
    # @payment.save
  end

  # GET /chains/new
  def new
    @payment = Payment.new
  end
  # # GET /chains/new
  # def new
  #   @payment = Payment.new
  # end

  def busqueda
  	@pagadero = Payment.find_by_id(params[:id])
  	# @imp = @pagadero.to_s
  end


  def buscar(payment_params)
  	@pagaBuscar = Payment.find_by_id(params[:id])
  	# @imp = @pagadero.to_s
  end

  private
      # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end
  	# Never trust parameters from the scary internet, only allow the white list through.
  	def payment_params
    	params.require(:payment).permit(:cash_pay)
  	end


end
