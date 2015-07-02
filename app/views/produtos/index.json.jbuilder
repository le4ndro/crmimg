json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome, :descricao, :preco, :obs
  json.url produto_url(produto, format: :json)
end
