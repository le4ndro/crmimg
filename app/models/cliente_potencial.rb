class ClientePotencial < ActiveRecord::Base
  validates :nome, presence: true

	has_many :contatos
  has_many :oportunidades
  has_many :enderecos
end
