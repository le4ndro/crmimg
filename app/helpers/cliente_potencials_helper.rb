module ClientePotencialsHelper
	def cliente_potencial_porte(porte)
		case porte
		when '1'
		  @porte = "Micro"
		when '2'
		  @porte = "Pequena"
		when '3'
		  @porte = "Média"
		when '4'
			@porte = "Média-Grande"    
		when '5'
			@porte = "Grande" 	
		end
	end

	def cliente_potencial_numero_funcionarios(numero_funcionarios)
		case numero_funcionarios
		when 1
		  @numero_funcionarios = "até 10"
		when 2
		  @numero_funcionarios = "entre 11 e 49"
		when 3
		  @numero_funcionarios = "entre 50 e 99"
		when 4
			@numero_funcionarios = "mais de 99" 	
		end
	end
end
