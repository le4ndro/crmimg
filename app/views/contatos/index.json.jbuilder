json.array!(@contatos) do |contato|
  json.extract! contato, :id, :nome, :cargo, :telefone, :celular, :email, :facebook, :linkedin, :googleplus, :cliente_potencial_id
  json.url contato_url(contato, format: :json)
end
