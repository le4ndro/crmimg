json.array!(@enderecos) do |endereco|
  json.extract! endereco, :id, :nome, :logradouro, :complemento, :bairro, :uf, :cep, :cliente_potencial_id
  json.url endereco_url(endereco, format: :json)
end
