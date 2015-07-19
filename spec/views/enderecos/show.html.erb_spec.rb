require 'rails_helper'

RSpec.describe "enderecos/show", type: :view do
  before(:each) do
    @endereco = assign(:endereco, Endereco.create!(
      :nome => "Nome",
      :logradouro => "Logradouro",
      :complemento => "Complemento",
      :bairro => "Bairro",
      :uf => "Uf",
      :cep => "Cep",
      :cliente_potencial => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Logradouro/)
    expect(rendered).to match(/Complemento/)
    expect(rendered).to match(/Bairro/)
    expect(rendered).to match(/Uf/)
    expect(rendered).to match(/Cep/)
    expect(rendered).to match(//)
  end
end
