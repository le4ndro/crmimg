module OportunidadesHelper

	def oportunidade_status(status)
		case status
		when '1'
		  @status = "Em andamento"
		when '2'
		  @status = "Ganho"
		when '3'
		  @status = "Perdido"  
		end
	end

	def oportunidade_probabilidade(probabilidade)
		case probabilidade
		when '1'
		  @probabilidade = "Remota"
		when '2'
		  @probabilidade = "Baixa"
		when '3'
		  @probabilidade = "Grande"
		when '4'
			@probabilidade = "Quente"    
		end
	end
	
	def oportunidade_etapa(etapa)
		case etapa
		when '1'
		  @etapa = "Prospecção"
		when '2'
		  @etapa = "Qualificação"
		when '3'
		  @etapa = "Apresentação"
		when '4'
			@etapa = "Maturação"
		when '5'
			@etapa = "Negociação"
		when '6'
			@etapa = "Fechamento"
		when '7'
			@etapa = "Pós-Venda"			    
		end
	end
end
