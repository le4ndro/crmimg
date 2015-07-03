class OportunidadesController < ApplicationController
  before_action :set_oportunidade, only: [:show, :edit, :update, :destroy]

  def index
    @oportunidades = Oportunidade.all
  end

  def show
  end

  def new
    @cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
    @oportunidade = @cliente_potencial.oportunidades.build
  end

  def edit
    @cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
    @oportunidade = Oportunidade.find(params[:id])
  end

  def create
    @cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
    @oportunidade = Oportunidade.new(oportunidade_params)
    @oportunidade.save

    redirect_to cliente_potencial_path(@cliente_potencial)
  end

  def update
    @cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
    @oportunidade.update(oportunidade_params)

    redirect_to cliente_potencial_path(@cliente_potencial)
  end

  def destroy
    @cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
    @oportunidade.destroy

    redirect_to cliente_potencial_path(@cliente_potencial)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oportunidade
      @oportunidade = Oportunidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oportunidade_params
      params.require(:oportunidade).permit(:nome, :descricao, :observacao, :status, :receita_estimada, :probabilidade, :cliente_potencial_id)
    end
end
