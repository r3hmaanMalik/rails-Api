class RecomendationsController < ApplicationController
  before_action :set_recomendation, only: [:show, :update, :destroy]

  # GET /recomendations
  # GET /recomendations.json
  def index
    @recomendations = Recomendation.all

    render json: @recomendations
  end

  # GET /recomendations/1
  # GET /recomendations/1.json
  def show
    render json: @recomendation
  end

  # POST /recomendations
  # POST /recomendations.json
  def create
    @recomendation = Recomendation.new(recomendation_params)

    if @recomendation.save
      render json: @recomendation, status: :created, location: @recomendation
    else
      render json: @recomendation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recomendations/1
  # PATCH/PUT /recomendations/1.json
  def update
    @recomendation = Recomendation.find(params[:id])

    if @recomendation.update(recomendation_params)
      head :no_content
    else
      render json: @recomendation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recomendations/1
  # DELETE /recomendations/1.json
  def destroy
    @recomendation.destroy

    head :no_content
  end

  private

    def set_recomendation
      @recomendation = Recomendation.find(params[:id])
    end

    def recomendation_params
      params.require(:recomendation).permit(:prdname, :comname)
    end
end
