class PlantsController < ApplicationController
    def index
        render json: Plant.all, status: :ok
    end

    def show
        render json: Plant.find_by(id: params[:id]), status: :ok
    end

    def create
        plant = Plant.create(params.permit(:name, :image, :price))
        render json: plant, status: :created
    end
end
