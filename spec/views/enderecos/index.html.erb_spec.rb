require 'rails_helper'

RSpec.describe "enderecos/index", type: :view do
  before(:each) do
    assign(:enderecos, [
      Endereco.create!(
        :nome => "Nome",
        :logradouro => "Logradouro",
        :complemento => "Complemento",
        :bairro => "Bairro",
        :uf => "Uf",
        :cep => "Cep",
        :cliente_potencial => nil
      ),
      Endereco.create!(
        :nome => "Nome",
        :logradouro => "Logradouro",
        :complemento => "Complemento",
        :bairro => "Bairro",
        :uf => "Uf",
        :cep => "Cep",
        :cliente_potencial => nil
      )
    ])
  end

  it "renders a list of enderecos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Logradouro".to_s, :count => 2
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
