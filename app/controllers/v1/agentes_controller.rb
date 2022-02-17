class V1::AgentesController < ApplicationController
  before_action :set_v1_agente, only: [:show, :update, :destroy]

  # GET /v1/agentes
  def index
    @v1_agentes = V1::Agente.all

    render json: @v1_agentes
  end

  # GET /v1/agentes/1
  def show
    render json: @v1_agente
  end

  # POST /v1/agentes
  def create
    @v1_agente = V1::Agente.new(v1_agente_params)

    if @v1_agente.save
      render json: @v1_agente, status: :created, location: @v1_agente
    else
      render json: @v1_agente.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /v1/agentes/1
  def update
    if @v1_agente.update(v1_agente_params)
      render json: @v1_agente
    else
      render json: @v1_agente.errors, status: :unprocessable_entity
    end
  end

  # DELETE /v1/agentes/1
  def destroy
    @v1_agente.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v1_agente
      @v1_agente = V1::Agente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def v1_agente_params
      params.fetch(:v1_agente, {})
    end
end
