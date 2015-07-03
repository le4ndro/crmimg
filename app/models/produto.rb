class Produto < ActiveRecord::Base
	validates :nome, presence: true
	validates :descricao, presence: true
	validates :preco, presence:true
end
