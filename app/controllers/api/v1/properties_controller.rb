class Api::V1::PropertiesController < Api::V1::BaseController
    def index
        properties = Property.all
        render json: serialize_models(properties), status: :ok
    end

    def show
        property = Property.find(params[:id])
        render json: serialize_model(property, include: ['reviews']), status: :ok
    end

    def create
        property = Property.create(property_params)
        if property.save
            render json: serialize_model(property), status: :ok
        end
    end

    def update
        property = Property.find(params[:id])
        property.update(property_params)
        render json: serialize_model(property), status: :ok
    end


    def destroy
        property = Property.find(params[:id])
        property.destroy

        render json: {success: ['delete successful']}
    end

    private

        def property_params
            params.require(:property).permit(:property_type, :rate, :address, :bedrooms, :bathrooms, :host_id)
        end

end
