class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @rooms = @user.rooms

        # Display all the guest reviews to host (if this user is a host)
        @guest_reviews = Review.where(type: "GuestReview", host_id: @user.id)

        # Display all the host reviews to guest (if this user is a guest)
        @host_reviews = Review.where(type: "HostReview", guest_id: @user.id)
    end
end
