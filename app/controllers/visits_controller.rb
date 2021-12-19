# frozen_string_literal: true

class VisitsController < ApplicationController
  before_action :set_visit, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /visits or /visits.json
  def index
    @visits = Visit.all
    @appointments = Appointment.all
  end

  # GET /visits/1 or /visits/1.json
  def show
    @creator = @visit.creator
    @doc = @visit.doc
    @appointment = Appointment.new
    @appointment.visit_id = @visit.id
    @appointment.receiver_id = @visit.creator.id
    @appointment = @visit.appointment.first
  end

  # GET /visits/new
  def new
    @visit = Visit.new
  end

  # GET /visits/1/edit
  def edit; end

  # POST /visits or /visits.json
  def create
    @visit = current_user.created_visits.build(visit_params)

    respond_to do |format|
      if @visit.save
        format.html { redirect_to @visit, notice: 'Visit was successfully created.' }
        format.json { render :show, status: :created, location: @visit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visits/1 or /visits/1.json
  def update
    respond_to do |format|
      if @visit.update(visit_params)
        format.html { redirect_to @visit, notice: 'Visit was successfully updated.' }
        format.json { render :show, status: :ok, location: @visit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visits/1 or /visits/1.json
  def destroy
    @visit.destroy
    respond_to do |format|
      format.html { redirect_to visits_url, notice: 'Visit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_visit
    @visit = Visit.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def visit_params
    params.require(:visit).permit(:date, :time, :problem, :creator_id, :doc_id)
  end
end
