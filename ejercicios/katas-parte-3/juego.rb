class Juego

	def set_palabra(a_word)
		@word = a_word
		@errores = 0
		@repeticiones = 0
		@aciertos = ''
			for i in(0..@word.length-1)
				@aciertos[i] = '-'
			end
	end

	def verificar_letra	(a_letter)
		if @word.include? a_letter
			self.completar_tabla_aciertos(a_letter)
			return true
		else
			@errores +=1
			return false
		end
	end

	def obtener_longitud
		@word.size
	end

	def get_errores
		@errores
	end

	def get_repeticiones
		@repeticiones
	end

	def completar_tabla_aciertos(letra)
		for i in(0..@word.length)
			if (@word[i] == letra)
				@repeticiones += 1
				@aciertos[i] = letra
			end
		end
	end

	def mostrar_tabla_aciertos
		return @aciertos
	end

	def verificar_ganador
		if((@word == @aciertos) && (@errores < 7))
			return 'Ganaste'
		else
			return 'Ahorcado'
		end
	end

end
