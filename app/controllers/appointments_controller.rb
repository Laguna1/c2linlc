# frozen_string_literal: true

class AppointmentsController < ApplicationController
  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.visit_id = params[:visit_id]

    @appointment.save

    redirect_to visit_path(@appointment.visit)
  end

  def appointment_params
    params.require(:appointment).permit(:author_name, :recipe)
  end
end
