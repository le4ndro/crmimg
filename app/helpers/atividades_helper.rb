module AtividadesHelper

	def atividade_tipo(tipo)
		case tipo
		when '1'
		  @status = "Telefonema"
		when '2'
		  @status = "E-Mail"
		when '3'
		  @status = "Reunião"
		when '4'
			@status = "Visita"    
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

end