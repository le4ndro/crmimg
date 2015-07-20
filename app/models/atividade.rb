class Atividade < ActiveRecord::Base
	validates :nome, presence: true
	validates :tipo, presence: true
	validates :descricao, presence: true
	validates :status, presence: true
	
  belongs_to :cliente_potencial
  belongs_to :oportunidade
end
