class Api::V1::HostsController < Api::V1::BaseController

    def index
        hosts = Host.all
        render json: serialize_models(hosts), status: :ok
    end

    def show
        host = Host.find(params[:id])
        render json: serialize_model(host), status: :ok
    end

    def create

        host = Host.find_or_create_by(host_params)

        if host.save
            render json: serialize_model(host)
        else
            render json: serialize_model_error(host.errors)
        end
    end

    private

        def host_params
            params.require(:host).permit(:name, :age, :host_since, :location, :email, :phone)
        end
end
