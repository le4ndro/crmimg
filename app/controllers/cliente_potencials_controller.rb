class ClientePotencialsController < ApplicationController
  before_action :set_cliente_potencial, only: [:show, :edit, :update, :destroy]

  # GET /cliente_potencials
  # GET /cliente_potencials.json
  def index
    if params[:search]
      @cliente_potencials = ClientePotencial.searchByNome(params[:search])
      @cliente_potencials = Kaminari.paginate_array(@cliente_potencials).page(params[:page]).per(5)   
    else
      @cliente_potencials = ClientePotencial.page(params[:page]).per(5)
    end    
  end

  # GET /cliente_potencials/1
  # GET /cliente_potencials/1.json
  def show
    @atividades = Atividade.where("cliente_potencial_id = ?", params[:id])
  end

  # GET /cliente_potencials/new
  def new
    @cliente_potencial = ClientePotencial.new
  end

  # GET /cliente_potencials/1/edit
  def edit
  end

  # POST /cliente_potencials
  # POST /cliente_potencials.json
  def create
    @cliente_potencial = ClientePotencial.new(cliente_potencial_params)

    respond_to do |format|
      if @cliente_potencial.save
        format.html { redirect_to @cliente_potencial, notice: 'Cliente potencial was successfully created.' }
        format.json { render :show, status: :created, location: @cliente_potencial }
      else
        format.html { render :new }
        format.json { render json: @cliente_potencial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cliente_potencials/1
  # PATCH/PUT /cliente_potencials/1.json
  def update
    respond_to do |format|
      if @cliente_potencial.update(cliente_potencial_params)
        format.html { redirect_to @cliente_potencial, notice: 'Cliente potencial was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente_potencial }
      else
        format.html { render :edit }
        format.json { render json: @cliente_potencial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente_potencials/1
  # DELETE /cliente_potencials/1.json
  def destroy
    @cliente_potencial.destroy
    respond_to do |format|
      format.html { redirect_to cliente_potencials_url, notice: 'Cliente potencial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente_potencial
      @cliente_potencial = ClientePotencial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_potencial_params
      params.require(:cliente_potencial).permit(:nome, :descricao, :website, :setor, :porte, :numero_funcionarios, :faturamento ,:observacao)
    end
end
