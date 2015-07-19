require 'rails_helper'

RSpec.describe "enderecos/new", type: :view do
  before(:each) do
    assign(:endereco, Endereco.new(
      :nome => "MyString",
      :logradouro => "MyString",
      :complemento => "MyString",
      :bairro => "MyString",
      :uf => "MyString",
      :cep => "MyString",
      :cliente_potencial => nil
    ))
  end

  it "renders new endereco form" do
    render

    assert_select "form[action=?][method=?]", enderecos_path, "post" do

      assert_select "input#endereco_nome[name=?]", "endereco[nome]"

      assert_select "input#endereco_logradouro[name=?]", "endereco[logradouro]"

      assert_select "input#endereco_complemento[name=?]", "endereco[complemento]"

      assert_select "input#endereco_bairro[name=?]", "endereco[bairro]"

      assert_select "input#endereco_uf[name=?]", "endereco[uf]"

      assert_select "input#endereco_cep[name=?]", "endereco[cep]"

      assert_select "input#endereco_cliente_potencial_id[name=?]", "endereco[cliente_potencial_id]"
    end
  end
end
