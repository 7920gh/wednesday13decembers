class Wednesday13decembersController < ApplicationController
  before_action :set_wednesday13december, only: %i[ show edit update destroy ]

  # GET /wednesday13decembers or /wednesday13decembers.json
  def index
    @wednesday13decembers = Wednesday13december.all
  end

  # GET /wednesday13decembers/1 or /wednesday13decembers/1.json
  def show
  end

  # GET /wednesday13decembers/new
  def new
    @wednesday13december = Wednesday13december.new
  end

  # GET /wednesday13decembers/1/edit
  def edit
  end

  # POST /wednesday13decembers or /wednesday13decembers.json
  def create
    @wednesday13december = Wednesday13december.new(wednesday13december_params)

    respond_to do |format|
      if @wednesday13december.save
        format.html { redirect_to wednesday13december_url(@wednesday13december), notice: "Wednesday13december was successfully created." }
        format.json { render :show, status: :created, location: @wednesday13december }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wednesday13december.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wednesday13decembers/1 or /wednesday13decembers/1.json
  def update
    respond_to do |format|
      if @wednesday13december.update(wednesday13december_params)
        format.html { redirect_to wednesday13december_url(@wednesday13december), notice: "Wednesday13december was successfully updated." }
        format.json { render :show, status: :ok, location: @wednesday13december }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wednesday13december.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wednesday13decembers/1 or /wednesday13decembers/1.json
  def destroy
    @wednesday13december.destroy!

    respond_to do |format|
      format.html { redirect_to wednesday13decembers_url, notice: "Wednesday13december was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wednesday13december
      @wednesday13december = Wednesday13december.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wednesday13december_params
      params.require(:wednesday13december).permit(:name, :email, :address, :phone, :description, :personaldata, :showemail, :trade, :location)
    end
end
