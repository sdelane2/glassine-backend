class HandlersController < ApplicationController
  before_action :set_handler, only: [:show, :update, :destroy]

  # GET /handlers
  def index
    @handlers = Handler.all

    render json: @handlers
  end

  # GET /handlers/1
  def show
    render json: @handler
  end

  # POST /handlers
  def create
    @handler = Handler.new(handler_params)

    if @handler.save
      render json: @handler, status: :created, location: @handler
    else
      render json: @handler.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /handlers/1
  def update
    if @handler.update(handler_params)
      render json: @handler
    else
      render json: @handler.errors, status: :unprocessable_entity
    end
  end

  # DELETE /handlers/1
  def destroy
    @handler.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_handler
      @handler = Handler.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def handler_params
      params.require(:handler).permit(:first_name, :last_name, :date_of_birth, :description, :city, :thumbnail, :hour_rate)
    end
end
