json.array!(@atividades) do |atividade|
  json.extract! atividade, :id, :nome, :descricao
  json.title atividade.nome
  json.start atividade.data_prevista_inicio
  json.end atividade.data_prevista_fim
  json.url atividade_url(atividade, format: :html)
end