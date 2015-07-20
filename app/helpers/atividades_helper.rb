module AtividadesHelper

	def atividade_tipo(tipo)
		case tipo
		when '1'
		  @tipo = "Telefonema"
		when '2'
		  @tipo = "E-Mail"
		when '3'
		  @tipo = "Reunião"
		when '4'
			@tipo = "Visita"    
		end
	end

	def atividade_status(status)
		case status
		when '1'
		  @status = "Não iniciada"
		when '2'
		  @status = "Em andamento"
		when '3'
		  @status = "Parada"  
		when '4'
		  @status = "Cancelada"  
		when '5'
		  @status = "Concluída"  
		end
	end
	
	def atividade_prioridade(prioridade)
		case prioridade
		when '1'
		  @prioridade = "Baixa"
		when '2'
		  @prioridade = "Média"
		when '3'
		  @prioridade = "Alta"  
		when '4'
		  @prioridade = "Urgente"  
		when '5'
		  @prioridade = "Crítica"  
		end
	end

end