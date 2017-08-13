class ReservationsController < ApplicationController
    before_action :authenticate_user!

    def create
        room = Room.find(params[:room_id])

        if current_user == room.user
            flash[:alert] = "You cannot book your own room!"
        else
            start_date = Date.parse(reservations_params[:start_date])
            end_date = Date.parse(reservations_params[:end_date])
            days = (end_date - start_date).to_i + 1

            @reservation = current_user.reservations.build(reservations_params)
            @reservation.room = room
            @reservation.price = room.price
            @reservation.total = room.price * days
            @reservation.save

            flash[:notice] = "Booked Successfully!"
        end
        redirect_to room
    end

    def your_trips
        @trips = current_user.reservations.order(start_date: :asc)
    end

    def your_reservations
        @rooms = current_user.rooms
    end

    private
        def reservations_params
            params.require(:reservation).permit(:start_date, :end_date)
        end
end
