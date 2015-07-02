json.array!(@oportunidades) do |oportunidade|
  json.extract! oportunidade, :id, :nome, :descricao, :observacao, :status, :receita_estimada, :probabilidade
  json.url oportunidade_url(oportunidade, format: :json)
end
