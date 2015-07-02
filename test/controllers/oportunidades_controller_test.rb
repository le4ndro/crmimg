require 'test_helper'

class OportunidadesControllerTest < ActionController::TestCase
  setup do
    @oportunidade = oportunidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oportunidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oportunidade" do
    assert_difference('Oportunidade.count') do
      post :create, oportunidade: { descricao: @oportunidade.descricao, nome: @oportunidade.nome, observacao: @oportunidade.observacao, probabilidade: @oportunidade.probabilidade, receita_estimada: @oportunidade.receita_estimada, status: @oportunidade.status }
    end

    assert_redirected_to oportunidade_path(assigns(:oportunidade))
  end

  test "should show oportunidade" do
    get :show, id: @oportunidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oportunidade
    assert_response :success
  end

  test "should update oportunidade" do
    patch :update, id: @oportunidade, oportunidade: { descricao: @oportunidade.descricao, nome: @oportunidade.nome, observacao: @oportunidade.observacao, probabilidade: @oportunidade.probabilidade, receita_estimada: @oportunidade.receita_estimada, status: @oportunidade.status }
    assert_redirected_to oportunidade_path(assigns(:oportunidade))
  end

  test "should destroy oportunidade" do
    assert_difference('Oportunidade.count', -1) do
      delete :destroy, id: @oportunidade
    end

    assert_redirected_to oportunidades_path
  end
end
