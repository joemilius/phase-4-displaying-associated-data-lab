class UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user, include: :items
    rescue ActiveRecord::RecordNotFound
        render json: {errors: "User not found"}, status: :not_found
    end
end
