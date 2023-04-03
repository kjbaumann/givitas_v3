class PagesController < ApplicationController
  def home
    @events = Event.order(:date)
  end

  def event
    @event = Event.find(params[:id])
  end

  def my_events
    @reservations = current_user.reservations
  end

  def new_reservation
    reservation = Reservation.new
    reservation.user = current_user
    reservation.event = Event.find(params[:id])
    reservation.save!
  end
  helper_method :new_reservation

  def check_reservation(event)
    has_reservation = false
    reservations = Reservation.all
    reservations.each do |reservation|
      if reservation.user == current_user && reservation.event == event
        has_reservation = true
      end
    end
    return has_reservation
  end
  helper_method :check_reservation

  def new_feedback

  end
end
