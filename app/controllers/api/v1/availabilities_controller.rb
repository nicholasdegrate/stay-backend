class Api::V1::AvailabilitiesController < Api::V1::BaseController
    def index
        availabilities = Availability.all
        render json: serialize_models(availabilities), status: :ok
    end

    def show
        availability = Availability.find(params[:id])
        render json: serialize_model(availability), status: :ok
    end
end
