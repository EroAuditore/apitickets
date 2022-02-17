class V1::MovimientosController < ApplicationController
  before_action :set_v1_movimiento, only: [:show, :update, :destroy]

  # GET /v1/movimientos
  def index
    @v1_movimientos = V1::Movimiento.all

    render json: @v1_movimientos
  end

  # GET /v1/movimientos/1
  def show
    render json: @v1_movimiento
  end

  # POST /v1/movimientos
  def create
    @v1_movimiento = V1::Movimiento.new(v1_movimiento_params)

    if @v1_movimiento.save
      render json: @v1_movimiento, status: :created, location: @v1_movimiento
    else
      render json: @v1_movimiento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /v1/movimientos/1
  def update
    if @v1_movimiento.update(v1_movimiento_params)
      render json: @v1_movimiento
    else
      render json: @v1_movimiento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /v1/movimientos/1
  def destroy
    @v1_movimiento.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v1_movimiento
      @v1_movimiento = V1::Movimiento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def v1_movimiento_params
      params.fetch(:v1_movimiento, {})
    end
end
