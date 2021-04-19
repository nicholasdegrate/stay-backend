class Api::V1::HostsController < Api::V1::BaseController
    before_action :authenticate, only: [:show, :update]

    def index
        hosts = Host.all
        render json: serialize_models(hosts), status: :ok
    end

    # POST /login
    def login
      # find the user based on their username
      host = Host.find_by(email: params[:email])
      # check their password
      if host && host.authenticate(params[:password])
        # save the user id in an encoded token
        token = JWT.encode({ host_id: host.id }, 'my$ecretK3y', 'HS256')
        render json: { host: serialize_model(host, include: ['properties']), token: token }
      else
        render json: { errors: ["Invalid username or password"] }, status: :unauthorized
      end
    end
  
    # POST /signup
    def signup
      # get the user info from the form (params)
      host_params = params.permit(:email, :password)
      # create a new user in the database (User.create)
      host = Host.create(host_params)
      if host.valid?
        # send back a response with new user
        token = JWT.encode({ host_id: host.id }, 'my$ecretK3y', 'HS256')
        render json: { host: serialize_model(host, include: ['properties']), token: token }, status: :created
      else
        # error messages
        render json: { errors: host.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    # GET /me
    # authenticate
    def show
      render json: @current_host
    end
  
    # PATCH /me
    # authenticate
    def update
      @current_host.update(bio: params[:bio], image: params[:image])
      # response!
      render json: host
    end
  
    private

        def host_params
            params.require(:host).permit(:name, :age, :host_since, :location, :email, :phone)
        end
end
