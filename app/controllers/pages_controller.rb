class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
    @appointments = Appointment.where(user_id: current_user.id)
    if params[:date].present?
      @date_selected = Date.parse(params[:date])
    else
      @date_selected = Date.current
    end
  end
end
