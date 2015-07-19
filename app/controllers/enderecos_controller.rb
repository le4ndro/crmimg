class EnderecosController < ApplicationController
  before_action :set_endereco, only: [:show, :edit, :update, :destroy]

  def index
    @enderecos = Endereco.all
  end

  def show
  end

  def new
    @cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
    @endereco = @cliente_potencial.enderecos.build
  end

  def edit
    @cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
    @endereco =  Endereco.find(params[:id])
  end

  def create
    @endereco = Endereco.new(endereco_params)

    if @endereco.save
      redirect_to cliente_potencial_path(params[:cliente_potencial_id])
    else
      @cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
      render "enderecos/new"
    end  
  end

  def update
    
    if @endereco.update(endereco_params)
      redirect_to cliente_potencial_path(params[:cliente_potencial_id])
    else
      @cliente_potencial = ClientePotencial.find(params[:cliente_potencial_id])
      render "enderecos/edit"
    end    
    
  end

  def destroy
    @endereco.destroy
    redirect_to cliente_potencial_path(params[:cliente_potencial_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endereco
      @endereco = Endereco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def endereco_params
      params.require(:endereco).permit(:nome, :logradouro, :complemento, :bairro, :uf, :cep, :cliente_potencial_id)
    end
end
