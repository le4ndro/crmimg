class ClientePotencial < ActiveRecord::Base
	has_many :contatos
  has_many :oportunidades
end
