class UsersController < SecuredController
    skip_before_action :authorize_request, only: [:index, :show]

    def index
        users = User.all
        render json: users
    end
    
      def show
        user = User.find(params[:id])
        render json: user
      rescue ActiveRecord::RecordNotFound
        head :not_found
    end
    
      def create
        user = User.create!(user_params)
        render json: user, status: :created
    end
    
      def destroy
        user = User.find(params[:id])
        user.delete
        head :no_content
    end
    
      private
    
      def user_params
        params.permit(:email, :password)
      end
end
