class V1::AgentesController < ApplicationController
  before_action :set_agente, only: [:show, :update, :destroy]

  # GET /v1/agentes
  def index
    @agentes = Agente.all

    render json: @agentes
  end

  # GET /v1/agentes/1
  def show
    render json: @agente
  end

  # POST /v1/agentes
  def create
    @agente = Agente.new(agente_params)

    if @agente.save
      render json: @agente, status: :created, location: @agente
    else
      render json: @agente.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /v1/agentes/1
  def update
    if @agente.update(agente_params)
      render json: @agente
    else
      render json: @agente.errors, status: :unprocessable_entity
    end
  end

  # DELETE /v1/agentes/1
  def destroy
    @agente.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agente
      @agente = Agente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def agente_params
      params.fetch(:agente, {})
    end
end
