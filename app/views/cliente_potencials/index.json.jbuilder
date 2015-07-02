json.array!(@cliente_potencials) do |cliente_potencial|
  json.extract! cliente_potencial, :id, :nome, :descricao, :website, :observacao
  json.url cliente_potencial_url(cliente_potencial, format: :json)
end
