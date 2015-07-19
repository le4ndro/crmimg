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
		  @status = "Remota"
		when '2'
		  @status = "Baixa"
		when '3'
		  @status = "Grande"
		when '4'
			@status = "Quente"    
		end
	end
	
	def oportunidade_etapa(etapa)
		case etapa
		when '1'
		  @status = "Prospecção"
		when '2'
		  @status = "Qualificação"
		when '3'
		  @status = "Apresentação"
		when '4'
			@status = "Maturação"
		when '5'
			@status = "Negociação"
		when '6'
			@status = "Fechamento"
		when '7'
			@status = "Pós-Venda"			    
		end
	end
end
