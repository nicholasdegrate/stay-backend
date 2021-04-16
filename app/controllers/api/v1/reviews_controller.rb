class Api::V1::ReviewsController < Api::V1::BaseController
    def index
        reviews = Review.all
        render json: serialize_models(reviews), status: :ok
    end

    def show
        review = Review.find(params[:id])
        render json: serialize_model(review), status: :ok
    end
end
