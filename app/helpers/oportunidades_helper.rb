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
end
