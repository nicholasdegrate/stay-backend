class Api::V1::HostsController < Api::V1::BaseController

    def index
        hosts = Host.all
        render json: serialize_models(hosts), status: :ok
    end

    def show
        host = Host.find(params[:id])
        render json: serialize_model(host), status: :ok
    end
end
