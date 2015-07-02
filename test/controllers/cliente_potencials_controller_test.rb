require 'test_helper'

class ClientePotencialsControllerTest < ActionController::TestCase
  setup do
    @cliente_potencial = cliente_potencials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cliente_potencials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente_potencial" do
    assert_difference('ClientePotencial.count') do
      post :create, cliente_potencial: { descricao: @cliente_potencial.descricao, nome: @cliente_potencial.nome, observacao: @cliente_potencial.observacao, website: @cliente_potencial.website }
    end

    assert_redirected_to cliente_potencial_path(assigns(:cliente_potencial))
  end

  test "should show cliente_potencial" do
    get :show, id: @cliente_potencial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente_potencial
    assert_response :success
  end

  test "should update cliente_potencial" do
    patch :update, id: @cliente_potencial, cliente_potencial: { descricao: @cliente_potencial.descricao, nome: @cliente_potencial.nome, observacao: @cliente_potencial.observacao, website: @cliente_potencial.website }
    assert_redirected_to cliente_potencial_path(assigns(:cliente_potencial))
  end

  test "should destroy cliente_potencial" do
    assert_difference('ClientePotencial.count', -1) do
      delete :destroy, id: @cliente_potencial
    end

    assert_redirected_to cliente_potencials_path
  end
end
