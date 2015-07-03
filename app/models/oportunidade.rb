class Oportunidade < ActiveRecord::Base
	belongs_to :cliente_potencial
	has_many :atividades
end
