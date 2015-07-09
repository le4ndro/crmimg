class OportunidadesController < ApplicationController
  before_action :set_oportunidade, only: [:show, :edit, :update, :destroy]

  def index
    #@oportunidades = Oportunidade.all
    redirect_to cliente_potencial_path(params[:cliente_potencial_id])
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
    @oportunidade = Oportunidade.new(oportunidade_params)

    if @oportunidade.save
      redirect_to cliente_potencial_path(params[:cliente_potencial_id])
    else
      @cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
      render "oportunidades/new"
    end    
  end

  def update
    if @oportunidade.update(oportunidade_params)
      redirect_to cliente_potencial_path(params[:cliente_potencial_id])
    else
      @cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
      render "oportunidades/edit"
    end    
  end

  def destroy
    @oportunidade.destroy

    redirect_to cliente_potencial_path(params[:cliente_potencial_id])
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
