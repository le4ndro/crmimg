# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


(1..100).each do |i|
  ClientePotencial.create!(nome: "Cliente #{i}", descricao: %{
      Nullam hendrerit iaculis sodales. Curabitur varius nibh arcu, id molestie nibh fermentum vitae. Cras quis semper dui. Cras porttitor urna sit amet risus vehicula tempor. Maecenas quis tempor ligula. Donec et nibh eu leo volutpat placerat. Fusce vulputate elit in nisi pretium, vel fermentum mi fermentum. Mauris scelerisque, lectus non luctus ultricies, urna eros tincidunt risus, at varius sapien diam id erat.
  }, website: "http://cliente#{i}.com.br", setor: "Varejo", porte: "4", numero_funcionarios: 3, faturamento: 900000, observacao: %{
      Nullam hendrerit iaculis sodales. Curabitur varius nibh arcu, id molestie nibh fermentum vitae. Cras quis semper dui. Cras porttitor urna sit amet risus vehicula tempor. Maecenas quis tempor ligula. Donec et nibh eu leo volutpat placerat. Fusce vulputate elit in nisi pretium, vel fermentum mi fermentum. Mauris scelerisque, lectus non luctus ultricies, urna eros tincidunt risus, at varius sapien diam id erat.
  })
end