class V1::ClientesController < ApplicationController
  before_action :set_v1_cliente, only: [:show, :update, :destroy]

  # GET /v1/clientes
  def index
    @v1_clientes = V1::Cliente.all

    render json: @v1_clientes
  end

  # GET /v1/clientes/1
  def show
    render json: @v1_cliente
  end

  # POST /v1/clientes
  def create
    @v1_cliente = V1::Cliente.new(v1_cliente_params)

    if @v1_cliente.save
      render json: @v1_cliente, status: :created, location: @v1_cliente
    else
      render json: @v1_cliente.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /v1/clientes/1
  def update
    if @v1_cliente.update(v1_cliente_params)
      render json: @v1_cliente
    else
      render json: @v1_cliente.errors, status: :unprocessable_entity
    end
  end

  # DELETE /v1/clientes/1
  def destroy
    @v1_cliente.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v1_cliente
      @v1_cliente = V1::Cliente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def v1_cliente_params
      params.fetch(:v1_cliente, {})
    end
end
