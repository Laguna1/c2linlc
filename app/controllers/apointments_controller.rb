class ApointmentsController < ApplicationController
  before_action :set_apointment, only: %i[ show edit update destroy ]

  # GET /apointments or /apointments.json
  def index
    @apointments = Apointment.all
  end

  # GET /apointments/1 or /apointments/1.json
  def show
  end

  # GET /apointments/new
  def new
    @apointment = Apointment.new
  end

  # GET /apointments/1/edit
  def edit
  end

  # POST /apointments or /apointments.json
  def create
    @apointment = Apointment.new(apointment_params)

    respond_to do |format|
      if @apointment.save
        format.html { redirect_to @apointment, notice: "Apointment was successfully created." }
        format.json { render :show, status: :created, location: @apointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @apointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apointments/1 or /apointments/1.json
  def update
    respond_to do |format|
      if @apointment.update(apointment_params)
        format.html { redirect_to @apointment, notice: "Apointment was successfully updated." }
        format.json { render :show, status: :ok, location: @apointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @apointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apointments/1 or /apointments/1.json
  def destroy
    @apointment.destroy
    respond_to do |format|
      format.html { redirect_to apointments_url, notice: "Apointment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apointment
      @apointment = Apointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apointment_params
      params.require(:apointment).permit(:visit_id, :receipt, :closing_date)
    end
end
