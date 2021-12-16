# frozen_string_literal: true

class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.visit_id = params[:visit_id]

    @appointment.save

    redirect_to visit_path(@appointment.visit)
  end

  def appointment_params
    params.require(:appointment).permit(:recipe, :visit_id, :doc_id, :receiver_id)
  end
end
