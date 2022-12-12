class AirlinesController < ApplicationController
    def index
        airline = Airline.all
        render json: airline
    end
    def show
        airline = Airline.find_by(id: params[:id])
        render json: airline, serializer: AirlineandReviewsSerializer
    end
    def create
        airline = Airline.create(airline_params)
        if airline
        render json: airline, status: :created
        else
            render json: {error: airline.errors.full_messages}, status: :unprocessable_entity
        end
    end
    def update
        airline = Airline.find_by(id: params[:id])
        if airline
         airline.update(airline_params)
        render json: airline, status: :created
        else
            render json: {error: airline.errors.full_messages}, status: :unprocessable_entity
        end
    end
    def destroy
         airline = Airline.find_by(id: params[:id])
         if airline
            airline.delete
            head :no_content
         else
            render json: {error: "Airline not found"}, status: :unprocessable_entity
         end
    end
    private
    def airline_params
        params.permit(:name, :image_url)
    end
end