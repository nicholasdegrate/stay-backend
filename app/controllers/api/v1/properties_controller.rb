class Api::V1::PropertiesController < Api::V1::BaseController
    def index
        properties = Property.all
        render json: serialize_models(properties), status: :ok
    end

    def show
        property = Property.find(params[:id])
        render json: serialize_model(property), status: :ok
    end
end
