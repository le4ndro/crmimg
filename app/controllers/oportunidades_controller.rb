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
    # respond_to do |format|
    #   if @oportunidade.save
    #     format.html { redirect_to @oportunidade, notice: 'Oportunidade was successfully created.' }
    #     format.json { render :show, status: :created, location: @oportunidade }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @oportunidade.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def update
    @oportunidade.update(oportunidade_params)

    redirect_to cliente_potencial_path(@cliente_potencial)
    # respond_to do |format|
    #   if @oportunidade.update(oportunidade_params)
    #     format.html { redirect_to @oportunidade, notice: 'Oportunidade was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @oportunidade }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @oportunidade.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def destroy
    @oportunidade.destroy

    redirect_to cliente_potencial_path(@cliente_potencial)
    # respond_to do |format|
    #   format.html { redirect_to oportunidades_url, notice: 'Oportunidade was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
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
