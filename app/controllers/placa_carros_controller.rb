class PlacaCarrosController < ApplicationController
  before_action :set_placa_carro, only: %i[ show edit update destroy ]

  # GET /placa_carros or /placa_carros.json
  def index
    @placa_carros = PlacaCarro.all
  end

  # GET /placa_carros/new
  def new
    @placa_carro = PlacaCarro.new
  end
  
  # GET /placa_carros/1/edit
  def edit
  end

  # POST /placa_carros or /placa_carros.json
  def create
    @placa_carro = PlacaCarro.new(placa_carro_params)
    if @placa_carro.save
      redirect_to placa_carros_path, notice: "Placa cadastrado com sucesso!"
    else
      render :new
    end
  end

  # PATCH/PUT /placa_carros/1 or /placa_carros/1.json
  def update    
    if @placa_carro.update(placa_carro_params)
      redirect_to placa_carros_path, notice: "Placa atualizada com sucesso!"
    else
      render :edit
    end
  end

  # DELETE /placa_carros/1 or /placa_carros/1.json
  def destroy
    if @placa_carro.destroy
      redirect_to placa_carros_path, notice: "Placa excluída com sucesso!"
    else
      render :index
    end
  end
 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_placa_carro
      @placa_carro = PlacaCarro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def placa_carro_params
      params.require(:placa_carro).permit(:placa, :proprietario, :modelo, :ano)
    end
end
