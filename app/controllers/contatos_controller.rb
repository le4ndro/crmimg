class ContatosController < ApplicationController
  before_action :set_contato, only: [:show, :edit, :update, :destroy]

  def index
    @contatos = Contato.all
  end

  def show
  end

  def new
    @cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
    @contato = @cliente_potencial.contatos.build
  end

  def edit
    @cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
    @contato = Contato.find(params[:id])
  end

  
  def create
    @cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
    @contato = Contato.new(contato_params)

    @contato.save

    redirect_to cliente_potencial_path(@cliente_potencial)
    
  end

  def update
    @contato.update(contato_params)
    redirect_to cliente_potencial_path(@contato.cliente_potencial_id)
  end

  
  def destroy
    @contato.destroy
    redirect_to cliente_potencial_path(@contato.cliente_potencial_id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contato
      @contato = Contato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contato_params
      params.require(:contato).permit(:nome, :cargo, :telefone, :celular, :email, :facebook, :linkedin, :googleplus, :cliente_potencial_id)
    end
end
