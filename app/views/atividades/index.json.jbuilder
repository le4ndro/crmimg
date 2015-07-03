json.array!(@atividades) do |atividade|
  json.extract! atividade, :id, :nome, :tipo, :descricao, :observacao, :acompanhamento, :status, :oportunidade_id
  json.url atividade_url(atividade, format: :json)
end
