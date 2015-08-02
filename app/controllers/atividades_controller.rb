class AtividadesController < ApplicationController
  before_action :set_atividade, only: [:show, :edit, :update, :destroy]

  def index
    @atividades = Atividade.all
  end

  def agenda
    @atividades = Atividade.where("data_prevista_inicio IS NOT NULL") 
  end  

  def show
  end

  def new
    #@cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
    #@oportunidade = Oportunidade.find(params[:oportunidade_id])
    #@atividade = @oportunidade.atividades.build
    @atividade = Atividade.new
    @cliente_potencials = ClientePotencial.all
    if @cliente_potencials.count > 0
      @oportunidades = Oportunidade.where("cliente_potencial_id = ?", ClientePotencial.first.id)  
    else
      @oportunidades = Oportunidade.all  
    end
  end

  def edit
    #@cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
    #@oportunidade = Oportunidade.find(params[:oportunidade_id])
    @atividade = Atividade.find(params[:id])
    @cliente_potencials = ClientePotencial.all
    if @cliente_potencials.count > 0
      @oportunidades = Oportunidade.where("cliente_potencial_id = ?", ClientePotencial.first.id)
    else
      @oportunidades = Oportunidade.all    
    end
  end

  def create
    @atividade = Atividade.new(atividade_params)
    if @atividade.save
      #redirect_to cliente_potencial_oportunidade_path(params[:cliente_potencial_id], params[:oportunidade_id])
      redirect_to atividades_path
    else
      #@cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
      #@oportunidade = Oportunidade.find(params[:oportunidade_id])
      render "atividades/new"
    end    
  end

  def update
    if @atividade.update(atividade_params)
      #redirect_to cliente_potencial_oportunidade_path(params[:cliente_potencial_id], params[:oportunidade_id])
      redirect_to atividades_path
    else
      #@cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
      #$@oportunidade = Oportunidade.find(params[:oportunidade_id])
      render "atividades/edit"
    end    
  end

  def destroy
    @atividade.destroy
    
    #redirect_to cliente_potencial_oportunidade_path(params[:cliente_potencial_id], params[:oportunidade_id])
    redirect_to atividades_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atividade
      @atividade = Atividade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atividade_params
      params.require(:atividade).permit(:nome, :tipo, :descricao, :observacao, :acompanhamento, :status, :oportunidade_id, :prioridade, :data_prevista_inicio, :data_realizada_fim, :data_realizada, :cliente_potencial_id)
    end
end
