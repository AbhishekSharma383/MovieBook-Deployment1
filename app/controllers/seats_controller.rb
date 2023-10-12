class SeatsController < ApplicationController

  def update_seats_statuses
    selected_seat_ids = params[:selected_seat_ids]
    # ap selected_seat_ids
    # byebug

    if selected_seat_ids.present?
      selected_seats = Seat.where(id: selected_seat_ids)
      selected_seats.update(status: "reserved")

      render json: { success: true }
    else
      render json: { success: false }
    end
  end

end