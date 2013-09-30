require 'rspec'
require_relative './juego.rb'

describe 'Juego' do

	describe 'modelo del juego' do
		subject { @juego = Juego.new }

		it { should respond_to( :set_palabra) }
		it { should respond_to( :get_errores) }
		it { should respond_to( :get_repeticiones) }
		it { should respond_to( :verificar_letra) }
		it { should respond_to( :obtener_longitud) }
		it { should respond_to( :completar_tabla_aciertos) }
		it { should respond_to( :mostrar_tabla_aciertos) }
		it { should respond_to( :verificar_ganador) }

	end

	before (:each) { @juego = Juego.new }


	describe 'verificar_letra' do

		it 'should return true when letter is a and word is car ' do
			@juego.set_palabra 'car'
			@juego.verificar_letra('a').should be true
		end

		it 'should return false when letter is e and word is car ' do
			@juego.set_palabra 'car'
			@juego.verificar_letra('e').should be false
		end

	end

	describe 'obtener_longitud' do

		it 'deberia devolver 3 cuando la palabra es car' do
			@juego.set_palabra 'car'
			@juego.obtener_longitud().should eq 3
		end	

		it 'deberia devolver 4 cuando la palabra es cars' do
			@juego.set_palabra 'cars'
			@juego.obtener_longitud().should eq 4
		end		

	end	


	describe 'get_errores' do

		it 'deberia devolver 0 cuando recien empiezo' do
			@juego.set_palabra 'car'
			@juego.get_errores().should eq 0
		end	

		it 'deberia devolver 1 cuando pregunto por a y la palabra es oso' do
			@juego.set_palabra 'oso'
			@juego.verificar_letra 'a'
			@juego.get_errores().should eq 1
		end	


		it 'deberia devolver 2 cuando pregunto mal 2 veces y la palabra es oso' do
			@juego.set_palabra 'oso'
			@juego.verificar_letra 'a'
			@juego.verificar_letra 'j'
			@juego.get_errores().should eq 2
		end	

	end

	describe 'completar_tabla_aciertos' do

		it 'Deberia devolver 3 cuando pregunto por a en cascada' do
			@juego.set_palabra('cascada')
			@juego.verificar_letra('a')
			@juego.get_repeticiones.should eq 3
		end
	end

	describe 'mostrar_juego' do

		it 'Deberia devolver a--- cuando pregunto por a en auto' do
			@juego.set_palabra('casa')
			@juego.verificar_letra('a')
			@juego.mostrar_juego().should eq 'a---'	
		end
	end

	describe 'verificar_ganador' do

		it 'Deberia devolver Ganaste cuando pregunto correctamente pato'
			@juego.set_palabra('pato')
			@juego.verificar_letra('p')
			@juego.verificar_letra('a')
			@juego.verificar_letra('t')
			@juego.verificar_letra('o')
			@juego.verificar_ganador().should eq 'Ganaste'
		end
		
		it 'Deberia devolver Ahorcado cuando pregunte incorrectamente 7 veces por lago' do
			@juego.set_palabra('lago')
			@juego.verificar_num_repeticiones('g')
			@juego.verificar_num_repeticiones('n')
			@juego.verificar_num_repeticiones('l')
			@juego.verificar_num_repeticiones('o')
			@juego.verificar_num_repeticiones('q')
			@juego.verificar_num_repeticiones('s')
			@juego.verificar_num_repeticiones('p')
			@juego.verificar_ganador().should eq 'Ahorcado'
		end
	end	

end
